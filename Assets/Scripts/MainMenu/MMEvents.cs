using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MMEvents : MonoBehaviour
{
    public void ClosePanel()
    {
        if (name == "LoadGamePanel")
            MainMenu.instance.CloseLoadGamePanel();
        else
            MainMenu.instance.CloseSettingsPanel();
    }
}
