using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleController : MonoBehaviour
{
    public ParticleSystem[] particulitas;
    public GameObject myForcefield;
    Transform miRef;
    public float duration = 1.3f;
    public void activarParticulas(Transform _tra) 
    {
        //gameObject.SetActive(true);
        miRef = _tra;
        transform.parent = miRef;
        if (myForcefield)
        {
            myForcefield.SetActive(true);
        }
       
        foreach (ParticleSystem ps in particulitas)
        {
            ps.Play();
        }
        StartCoroutine(desactivarParticulas());
    }

    public IEnumerator desactivarParticulas()
    {
        yield return new WaitForSeconds(duration);
        if (myForcefield)
        {
            myForcefield.SetActive(false);
        }
        miRef = transform.parent = null;
        gameObject.SetActive(false);
    }
}
