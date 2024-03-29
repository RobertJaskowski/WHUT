﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;



public class CharacterManager : MonoBehaviour
{

    public static CharacterManager instance;

    public RectTransform characterPanel;

    public List<Character> characters = new List<Character>();


    public Dictionary<string, int> characterDictionary = new Dictionary<string, int>();




    private void Awake()
    {
        instance = this;
    }

    public Character GetCharacter(string characterName, bool createCharacterIfDoesNotExist = true, string poseName = "A", bool enableCreatedCharactersOnStart = true)
    {
        int index = -1;
        if (characterDictionary.TryGetValue(characterName, out index))
        {
            return characters[index];
        }
        else if (createCharacterIfDoesNotExist)
        {
            return CreateCharacter(characterName, poseName, enableCreatedCharactersOnStart);
        }
        return null;
    }

    public Character CreateCharacter(string characterName, string poseName, bool enabledOnStart = true)
    {
        Character newCharacter = new Character(characterName, poseName, enabledOnStart);

        characterDictionary.Add(characterName, characters.Count);
        characters.Add(newCharacter);

        return newCharacter;
    }

    public class CHARACTERPOSITIONS
    {
        public Vector2 bottomLeft = new Vector2(0, 0);
        public Vector2 bottomCenter = new Vector2(0.5f, 0);
        public Vector2 bottomRight = new Vector2(1f, 0);

    }

    public class CHARACTEREXPRESSIONS
    {
        public int normal = 0;
        public int shy = 1;

    }

    public static CHARACTEREXPRESSIONS characterExpressions = new CHARACTEREXPRESSIONS();


}
