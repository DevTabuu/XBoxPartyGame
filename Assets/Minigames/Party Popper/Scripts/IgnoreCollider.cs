using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace PartyPopper
{
    public class IgnoreCollider : MonoBehaviour
    {

        [SerializeField]
        private Tag[] _tagsToIgnore;

        private Collider[] _colliders;

        void Start()
        {
            _colliders = gameObject.GetComponents<Collider>();
        }

        private void OnCollisionEnter(Collision collision)
        {
            if (IsIgnoredTag(collision.gameObject.tag))
                foreach (Collider collider in _colliders)
                    Physics.IgnoreCollision(collision.gameObject.GetComponent<Collider>(), collider, true);
        }

        private bool IsIgnoredTag(string otherTag)
        {
            foreach (Tag tag in _tagsToIgnore)
                if (otherTag.Equals(tag.GetTagId()))
                    return true;

            return false;
        }
    }
}
