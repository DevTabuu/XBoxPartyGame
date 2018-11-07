using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelSwitch : MonoBehaviour {

    private int _LevelIndex;

    [SerializeField]
    private List<GameObject> _Levels;

	public void SwitchLevel()
    {
        for(int i = 0; i < _Levels.Count; i++)
        {

        }
    }
}
