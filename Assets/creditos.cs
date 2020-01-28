using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class creditos : MonoBehaviour
{
    public Transform MyCam,CamCreditPosition;
    public Transform[] Todos;
    public Transform[] Posiciones;
    public GameObject credit;
    public BtnActive btn;
    bool startcredits = false;
    private Vector3 velocity = Vector3.zero;
    public float VelZoom = 1.0f;

    public float duration=6.0f;
    float factMovim, valorT;
    private GameObject miFader;
    private Animator anim;
    private bool notActivated;

    private void Start()
    {
        StartCoroutine(SearchFader());
    }

    private void Update()
    {
        if (btn.hasbeenused)
        {
            if (!startcredits)
            {
                startcredits = true;
                StartCreditSequence();
                //Debug.Log("starting");
            }
        }

        if (startcredits)
        {
            UpdateCreditsSequence();
            //Debug.Log("Updating");
        }
    }

    void StartCreditSequence()
    {
        factMovim = 1.0f / duration;
        MyCam.GetComponent<CameraController>().enabled=false;
        CharacterMovement ct = Todos[0].GetComponent<CharacterMovement>();
        Destroy(Todos[0].GetComponent<Rigidbody>());
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
               Destroy( t.GetComponent<Rigidbody>());
            }
            primeravez = false;
        }

        credit.SetActive(true);

        StartCoroutine(LoadLevel());
    }

    void UpdateCreditsSequence()
    {
        int i;
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
            for (i = 0; i < Posiciones.Length; i++)
            {
                Todos[i].position = Vector3.Lerp(Todos[i].position, Posiciones[i].position, valorT);
                Todos[i].rotation = Quaternion.Lerp(Todos[i].rotation, Posiciones[i].transform.rotation, valorT);
            }
        }
        else
        {
            MyCam.position = CamCreditPosition.transform.position; //sigue al transform ese
            MyCam.rotation = CamCreditPosition.transform.rotation;

            for (i = 0; i < Posiciones.Length; i++)
            {
                Todos[i].position = Posiciones[i].position;
                Todos[i].rotation = Posiciones[i].transform.rotation;
            }
        }
      
    }

    public IEnumerator SearchFader()
    {
        yield return new WaitForSeconds(1f);
        miFader = GameObject.FindGameObjectWithTag("fader");
        DontDestroyOnLoad(miFader);
        anim = miFader.GetComponent<Animator>();
    }

    public IEnumerator LoadLevel()
    {
        yield return new WaitForSeconds(15f);
        notActivated = false;
        anim.SetTrigger("Fade");
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene("Menu");
        yield return new WaitForSeconds(1f);
        anim.SetTrigger("EndLoad");
        Debug.Log("EndLoad");
        yield return new WaitForSeconds(3f);
        //Destroy(gameObject);
    }
}
