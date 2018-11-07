using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using XBOXParty;
using UnityEngine.UI;

namespace PartyPopper
{
    public class CharacterSwapper : MonoBehaviour
    {
        [SerializeField]
        private List<Image> _bgImages, _playerImage, _Icons;

        private Transform _canvas;

        private GlobalGameManager _instance = GlobalGameManager.Instance;

        private int _playerCount;

        private void Start()
        {
            _playerCount = _instance.PlayerCount;
            for(int i = 0; i < 4; i++)
            {
                _bgImages[i].gameObject.SetActive(false);
                _playerImage[i].gameObject.SetActive(false);
            }

            for(int i = 0; i < _playerCount; i++)
            {
                InputManager.Instance.BindButton("PartyPopper_CharacterSelect_RShoulder", i, ControllerButtonCode.RightShoulder, ButtonState.OnPress);
                InputManager.Instance.BindButton("PartyPopper_CharacterSelect_LShoulder", i, ControllerButtonCode.LeftShoulder, ButtonState.OnPress);
                InputManager.Instance.BindButton("PartyPopper_CharacterSelect_A", i, ControllerButtonCode.A, ButtonState.OnPress);
            }          
        }

        private void Update()
        {
            for (int i = 0; i < _playerCount; i++)
            {
                _bgImages[i].gameObject.SetActive(true);
                _playerImage[i].gameObject.SetActive(true);
            }

            SwapIcons();

        }

        private void SwapIcons()
        {
            bool rShoulder = InputManager.Instance.GetButton("PartyPopper_CharacterSelect_RShoulder");
            bool lShoulder = InputManager.Instance.GetButton("PartyPopper_CharacterSelect_LShoulder");
            bool aButton = InputManager.Instance.GetButton("PartyPopper_CharacterSelect_A");

            int index = 0;

            if (rShoulder)
            {
                index += 1;
            }

            if (lShoulder)
            {
                index -= 1;
            }
            
            if(index > 2)
            {
                index = 0;
            }

            if (index < 0)
            {
                index = 2;
            }

            _Icons[index].gameObject.SetActive(true);
        }
    }
}

