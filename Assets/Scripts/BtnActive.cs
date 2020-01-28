using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class BtnActive : MonoBehaviour
{
    public Animator[] activables;
    public bool hasbeenused=false;
    public int requeridos=0;
    int actuales = 0;
    public TextMeshProUGUI rquiredText;

    private void Start()
    {
        rquiredText.text = actuales.ToString() + "/" + requeridos.ToString();
    }

    private void OnTriggerEnter(Collider other)
    {
        actuales++;
        if (!hasbeenused && actuales < requeridos)
        {
            rquiredText.text = actuales.ToString() + "/" + requeridos.ToString();
        }
        else
        {
            hasbeenused=true;
            foreach (Animator an in activables)
            {
                an.SetTrigger("Abrir");
            }
            
            rquiredText.text = actuales.ToString() + "/" + requeridos.ToString();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        actuales--;
        if (!hasbeenused)
        {
            rquiredText.text = actuales.ToString() + "/" + requeridos.ToString();
        }
    }
}
