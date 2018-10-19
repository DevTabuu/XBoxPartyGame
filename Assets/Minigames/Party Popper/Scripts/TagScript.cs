using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace PartyPopper
{
    public class TagScript : MonoBehaviour
    {

        [SerializeField]
        private Tag _tag;

        public void Awake()
        {
            gameObject.tag = _tag.GetTagId();
        }

        public Tag GetTag()
        {
            return _tag;
        }
    }

    public enum Tag
    {
        UNDEFINED = 0,

        PLAYER,
        BALL,

        TITLE_GOAL,
        TILE_DEATH,
        TILE_NORMAL
    }

    public static class TagMethodsExtention
    {
        public static string GetTagId(this Tag tag)
        {
            return "Tag " + (int)tag;
        }
    }
}
