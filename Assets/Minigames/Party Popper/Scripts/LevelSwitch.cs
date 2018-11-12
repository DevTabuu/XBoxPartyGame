using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XBOXParty;

namespace PartyPopper
{
    public class LevelSwitch : MonoBehaviour
    {
        [SerializeField]
        private List<GameObject> _cameraPoints;

        private float _timer = 0f;
        private int _index = 0;

        private void Update()
        {
            if (_timer >= 60)
            {
                _timer = 0;
                _index += 1;
                SwapLevel(_index);
            }

            if(_index > 2)
            {
                _index = 0;
            }
        }

        private void SwapLevel(int index)
        {
            int levelIndex = index;

            Vector3.Lerp(Camera.main.transform.position, _cameraPoints[levelIndex].transform.position, _timer);
        }
    }
}

