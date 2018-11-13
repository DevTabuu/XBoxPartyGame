using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace PartyPopper
{
    public class StageScript : MonoBehaviour
    {

        [SerializeField]
        private List<GameObject> _playerSpawnLocations;

        [SerializeField]
        private GameObject _ballSpawnLocation;

        [SerializeField]
        private GameObject _cameraSpawnLocation;

        private List<Vector3> _playerSpawnLocationVectors;

        private void Awake()
        {
            _playerSpawnLocationVectors = new List<Vector3>();
            _playerSpawnLocations.ForEach(gameObject => _playerSpawnLocationVectors.Add(gameObject.transform.position));
        }

        public List<Vector3> GetPlayerSpawnLocations()
        {
            return _playerSpawnLocationVectors;
        }

        public Vector3 GetBallSpawnLocation()
        {
            return _ballSpawnLocation.transform.position;
        }

        public Vector3 GetCameraLocation()
        {
            return _cameraSpawnLocation.transform.position;
        }
    }
}
