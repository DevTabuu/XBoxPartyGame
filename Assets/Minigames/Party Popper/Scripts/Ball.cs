using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace PartyPopper
{
    public class Ball : MonoBehaviour
    {

        [SerializeField]
        ParticleSystem _trailParticleSystem;

        [SerializeField]
        string _colorableMaterialName;

        Material _colorableMaterial;

        TeamMember _lastTouched;

        ParticleSystem.MainModule _particleMain;
        ParticleSystem.TrailModule _particleTrail;


        private void Start()
        {
            _particleMain = _trailParticleSystem.main;
            _particleTrail = _trailParticleSystem.trails;

            foreach (Material material in GetComponent<Renderer>().materials)
            {
                if (material.name.Equals(_colorableMaterialName))
                {
                    _colorableMaterial = material;
                    break;
                }
            }

            if(_colorableMaterial == null)
                throw new System.NullReferenceException("Material (" + _colorableMaterialName + ") Not Found!");

            SetLastTouched(null);
        }

        public TeamMember GetLastTouchingPlayer()
        {
            return _lastTouched;
        }

        public void SetLastTouched(TeamMember teamMember)
        {
            _lastTouched = teamMember;
            Color color = _lastTouched == null ? Color.white : _lastTouched.GetColor();

            _particleMain.startColor = color;
            _particleTrail.colorOverTrail = color;
            _particleTrail.colorOverLifetime = color;

            _colorableMaterial.SetColor("_EmissionColor", color);
        }
    }
}
