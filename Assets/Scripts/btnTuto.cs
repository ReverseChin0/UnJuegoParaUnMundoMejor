using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class btnTuto : MonoBehaviour
{

    public Animator Puerta;
    public bool full = false;
    public int requeridos = 1;
    int actuales = 0;
    public TextMeshProUGUI rquiredText;

    public btnTuto miCompa;

    private void OnTriggerEnter(Collider other)
    {
        actuales++;
      
        if(actuales >= requeridos)
        {
            full = true;
            if (miCompa.full)
            {
                activarPuerta();
            }
        }

        rquiredText.text = actuales.ToString() + "/" + requeridos.ToString();
    }

    private void OnTriggerExit(Collider other)
    {
        actuales--;
        if (actuales<requeridos)
        {
            full = false;
        }
        rquiredText.text = actuales.ToString() + "/" + requeridos.ToString();
    }


    void activarPuerta()
    {
        //hasbeenused = true;
        Puerta.SetTrigger("Abrir");
        rquiredText.text = actuales.ToString() + "/" + requeridos.ToString();
    }
}
