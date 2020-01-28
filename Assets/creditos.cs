using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class creditos : MonoBehaviour
{
    public Transform MyCam,CamCreditPosition;
    public Transform[] Todos;
    public Transform[] Posiciones;
    public BtnActive btn;
    bool startcredits = false;
    private Vector3 velocity = Vector3.zero;
    public float VelZoom = 1.0f;

    public float duration=6.0f;
    float factMovim, valorT;

    private void Update()
    {
        if (btn.hasbeenused)
        {
            if (!startcredits)
            {
                startcredits = true;
                StartCreditSequence();
                Debug.Log("starting");
            }
        }

        if (startcredits)
        {
            UpdateCreditsSequence();
            Debug.Log("Updating");
        }
    }

    void StartCreditSequence()
    {
        factMovim = 1.0f / duration;
        MyCam.GetComponent<CameraController>().enabled=false;
        CharacterMovement ct = Todos[0].GetComponent<CharacterMovement>();
        Todos[0].GetComponent<Rigidbody>().detectCollisions = false;
        ct.GetComponent<Collider>().enabled = false;
        ct.misIks.enabled = false;
        ct.enabled = false;
       

        bool primeravez = true;
        foreach (Transform t in Todos)
        {
            if (!primeravez)
            {
                t.GetComponent<SonPololosIK>().enabled = false;
                t.GetComponent<NPC_Controller>().enabled = false;
                t.GetComponent<Collider>().enabled = false;
            }
            primeravez = false;
        }
    }

    void UpdateCreditsSequence()
    {
        if (valorT < 1.0f) //si no es el 100%
        {
            valorT += factMovim * Time.deltaTime;//Avanzamos valor en T
            if (valorT >= 1.0f)//Seguridad de no ir mas haya del B
            {
                valorT = 1.0f;
            }
            //Actualizamos posicion
            MyCam.position = Vector3.Lerp(MyCam.position, CamCreditPosition.transform.position, valorT);
            MyCam.rotation = Quaternion.Lerp(MyCam.rotation, CamCreditPosition.transform.rotation, valorT);
        }
        else
        {
            MyCam.position = CamCreditPosition.transform.position; //sigue al transform ese
            MyCam.rotation = CamCreditPosition.transform.rotation;
        }
        int i;

        for (i = 0; i < Posiciones.Length; i++)
        {
            Vector3 PosicionSuave = Vector3.SmoothDamp(Todos[i].position, Posiciones[i].position, ref velocity, VelZoom);

            transform.position = PosicionSuave;
            transform.rotation = Quaternion.Slerp(Todos[i].rotation, Posiciones[i].rotation, 10 * Time.deltaTime);
        }
      
    }
}
