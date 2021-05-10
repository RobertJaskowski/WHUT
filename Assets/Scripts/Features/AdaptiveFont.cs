using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class AdaptiveFont : MonoBehaviour
{
    TextMeshProUGUI txt;
    public bool continualUpdate = true;

    public int fontSizeAtDefaultResolution = 24;
    public static float defaultResolution = 0f;

    private void Awake()
    {
        defaultResolution = Screen.width + Screen.height;
    }


    // Start is called before the first frame update
    void Start()
    {

        txt = GetComponent<TextMeshProUGUI>();

        if (continualUpdate)
        {
            InvokeRepeating("Adjust", 0f, Random.RandomRange(0.5f, 2f));
        }
        else
        {
            Adjust();
            enabled = false;
        }
    }
    void Adjust()
    {
        if (!enabled || !gameObject.activeInHierarchy)
            return;

        float totalCurrentRes = Screen.height + Screen.width;
        float perc = totalCurrentRes / defaultResolution;
        int fontsize = Mathf.RoundToInt((float)fontSizeAtDefaultResolution * perc);

        txt.fontSize = fontsize;
    }
}
