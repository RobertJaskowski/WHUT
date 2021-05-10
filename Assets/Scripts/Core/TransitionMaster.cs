﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TransitionMaster : MonoBehaviour
{

    public static TransitionMaster instance;

    public RawImage overlayImage;
    public Material transitionMaterialprefab;

    private void Awake()
    {
        instance = this;
        overlayImage.material = new Material(transitionMaterialprefab);
    }
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
    }

    static bool sceneVisible = true;
    public static void ShowScene(bool show, float speed = 1, bool smooth = false, Texture2D transitionEffect = null)
    {
        if (transitioningOverlay != null)
            instance.StopCoroutine(transitioningOverlay);

        sceneVisible = show;

        if (transitionEffect != null)
            instance.overlayImage.material.SetTexture("_AlphaTex", transitionEffect);

        transitioningOverlay = instance.StartCoroutine(TransitioningOverlay(show, speed, smooth));
    }

    static Coroutine transitioningOverlay = null;
    static IEnumerator TransitioningOverlay(bool show, float speed, bool smooth)
    {
        float targVal = show ? 1 : 0;
        float curVal = instance.overlayImage.material.GetFloat("_Cutoff");

        while (curVal != targVal)
        {
            curVal = smooth ? Mathf.Lerp(curVal, targVal, speed * Time.deltaTime) : Mathf.MoveTowards(curVal, targVal, speed * Time.deltaTime);
            instance.overlayImage.material.SetFloat("_Cutoff", curVal);
            yield return new WaitForEndOfFrame();
        }

        transitioningOverlay = null;
    }

    public static void TransitionLayer(BCFC.LAYER layer, Texture2D targetimage, Texture2D transitionEffect, float speed = 1, bool smooth = false)
    {
        if (layer.specialTransitionCoroutine != null)
        {
            instance.StopCoroutine(layer.specialTransitionCoroutine);
        }

        if (targetimage != null)
            layer.specialTransitionCoroutine = instance.StartCoroutine(TransitioningLayer(layer, targetimage, transitionEffect, speed, smooth));
        else
            layer.specialTransitionCoroutine = instance.StartCoroutine(TransitioningLayerToNull(layer, transitionEffect, speed, smooth));

    }

    static IEnumerator TransitioningLayer(BCFC.LAYER layer, Texture2D targetTex, Texture2D transitionEffect, float speed, bool smooth)
    {
        GameObject ob = Instantiate(layer.newImageObjectReference, layer.newImageObjectReference.transform.parent) as GameObject;
        ob.SetActive(true);

        RawImage im = ob.GetComponent<RawImage>();
        im.texture = targetTex;

        layer.activeImage = im;
        layer.allImages.Add(im);

        im.material = new Material(instance.transitionMaterialprefab);
        im.material.SetTexture("_AlphaText", transitionEffect);
        im.material.SetFloat("_Cutoff", 1);

        float curVal = 1;

        while (curVal > 0)
        {
            curVal = smooth ? Mathf.Lerp(curVal, 0, speed * Time.deltaTime) : Mathf.MoveTowards(curVal, 0, speed * Time.deltaTime);
            im.material.SetFloat("_Cutoff", curVal);
            yield return new WaitForEndOfFrame();

        }

        if (im != null)
        {
            im.material = null;
            im.color = GlobalF.SetAlpha(im.color, 1);

        }

        for (int i = layer.allImages.Count - 1; i >= 0; i--)
        {
            if (layer.allImages[i] == layer.activeImage && layer.activeImage != null)
            {
                continue;
            }

            if (layer.allImages[i] != null)
                Destroy(layer.allImages[i].gameObject, 0.01f);

            layer.allImages.RemoveAt(i);

        }

        layer.specialTransitionCoroutine = null;
    }

    static IEnumerator TransitioningLayerToNull(BCFC.LAYER layer, Texture2D transitionEffect, float speed, bool smooth)
    {
        List<RawImage> currentimagesOnLayer = new List<RawImage>();

        foreach (RawImage r in layer.allImages)
        {
            r.material = new Material(instance.transitionMaterialprefab);
            r.material.SetTexture("_AlphaTex", transitionEffect);
            r.material.SetFloat("_Cutoff", 0);
            currentimagesOnLayer.Add(r);
        }

        float curVal = 0;
        while (curVal < 1)
        {
            curVal = smooth ? Mathf.Lerp(curVal, 1, speed * Time.deltaTime) : Mathf.MoveTowards(curVal, 1, speed * Time.deltaTime);
            for (int i = 0; i < layer.allImages.Count; i++)
            {
                layer.allImages[i].material.SetFloat("_Cutoff", curVal);
            }
            yield return new WaitForEndOfFrame();
        }

        foreach (RawImage r in currentimagesOnLayer)
        {
            layer.allImages.Remove(r);
            if (r != null)
                Destroy(r.gameObject, 0.01f);

        }

        layer.specialTransitionCoroutine = null;
    }
}
