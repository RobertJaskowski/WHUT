﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static ChoiceScreen;

[System.Serializable]
public class GAMEFILE
{
    public string chapterName;
    public int chapterProgress = 0;

    public string cachedLastSpeaker = "";

    public string currentTextSystemSpeakerNameText = "";
    public string currentTextSystemDisplayText = "";

    public List<CHARACTERDATA> charactersInScene = new List<CHARACTERDATA>();
    public Dictionary<string, CHOICE> choicesMade = new Dictionary<string, CHOICE>();

    public Texture background = null;
    public Texture cinematic = null;
    public Texture foreground = null;

    public AudioClip music = null;

    public GAMEFILE()
    {
        this.chapterName = "Chapter0";//Chapter0
        this.chapterProgress = 0;
        this.cachedLastSpeaker = "";

        this.background = null;
        this.cinematic = null;
        this.foreground = null;

        this.music = null;

        charactersInScene = new List<CHARACTERDATA>();
        choicesMade = new Dictionary<string, CHOICE>();
    }

    [System.Serializable]
    public class CHARACTERDATA
    {
        public string characterName = "";
        public bool enabled = true;
        public string facialExpression = "";
        public string bodyExpression = "";
        public bool facingLeft = true;
        public Vector2 position = Vector2.zero;

        public CHARACTERDATA(Character character)
        {
            this.characterName = character.characterName;
            this.enabled = character.isVisibleInScene;
            this.facialExpression = character.renderers.expressionRenderer.sprite.name;
            this.bodyExpression = character.renderers.bodyRenderer.sprite.name;
            this.facingLeft = character.isFacingLeft;
            this.position = character._targetPosition;
        }
    }
}
