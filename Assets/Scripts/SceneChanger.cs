using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class SceneChanger : MonoBehaviour
{
    public string scenetogo = "";
    public Animator anim;
    GameObject miFader;
    public bool notActivated = true,Reset=false;
    private void Start()
    {
        DontDestroyOnLoad(gameObject);
        StartCoroutine(SearchFader());
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && notActivated)
        {
            StartCoroutine(LoadLevel());
        }
    }

    private void Update()
    {
        if (!Reset && Input.GetKeyDown(KeyCode.R))
        {
            Reset = true;
            scenetogo = SceneManager.GetActiveScene().name;
            StartCoroutine(LoadLevel());
        }
    }

    public IEnumerator SearchFader() 
    {
        yield return new WaitForSeconds(1f);
        miFader=GameObject.FindGameObjectWithTag("fader");
        DontDestroyOnLoad(miFader);
        anim = miFader.GetComponent<Animator>();
    }

    public IEnumerator LoadLevel()
    {
        notActivated = false;
        anim.SetTrigger("Fade");
        yield return new WaitForSeconds(2f);
        SceneManager.LoadScene(scenetogo);
        yield return new WaitForSeconds(1f);
        anim.SetTrigger("EndLoad");
        Debug.Log("EndLoad");
        yield return new WaitForSeconds(3f);
        //Destroy(gameObject);
    }

}
