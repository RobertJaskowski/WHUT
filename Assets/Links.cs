using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Links : MonoBehaviour
{

    public GameObject creditScreen;

    private void Awake()
    {
        if (creditScreen != null)
            creditScreen.SetActive(false);
    }

    public void openYT()
    {
        Application.OpenURL("https://www.youtube.com/channel/UCCa3HL9yIiH0SEtnEw0cxqg");
    }

    public void openTwitter()
    {
        Application.OpenURL("https://twitter.com/rjjaskowski");
    }

    public void openInsta()
    {
        Application.OpenURL("https://www.instagram.com/robertjjaskowski/");
    }

    public void toMainMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void showCredits()
    {
        Debug.Log("credits");
        creditScreen.SetActive(true);
    }
}
