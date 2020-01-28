using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuPrincipal : MonoBehaviour
{
    public GameObject miMenu, misCreditos;

    public void Salir()
    {
        Application.Quit();
    }

    public void Iniciar()
    {
        SceneManager.LoadScene("Tutorial");
    }

    public void Creditos()
    {
        miMenu.SetActive(false);
        misCreditos.SetActive(true);
    }

    public void volveralMain()
    {
        miMenu.SetActive(true);
        misCreditos.SetActive(false);
    }
}
