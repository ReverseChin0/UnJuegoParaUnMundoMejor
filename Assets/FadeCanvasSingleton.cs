using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeCanvasSingleton : MonoBehaviour
{
    public static FadeCanvasSingleton singleton;
    void Start()
    {
        if (singleton != null)
        {
            Destroy(gameObject);
        }
        else
        {
            singleton = this;
        }
    }
}
