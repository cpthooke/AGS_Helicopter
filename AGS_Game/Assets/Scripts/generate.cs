using UnityEngine;
using System.Collections;

public class generate : MonoBehaviour
{
    public GameObject wallShort;
    public GameObject wallLong;
    int score = 0;

    void Start ()
    {
        InvokeRepeating("Create", 1.0f, 1.5f);
	}

    void OnGUI()
    {
        GUI.color = Color.black;
        GUILayout.Label(" Score: " + score.ToString());
    }

    void Create ()
    {
        int digit = Random.Range(0, 2);
        if (digit == 0)
            Instantiate(wallShort);
        else if (digit == 1)
            Instantiate(wallLong);
        score++;
    }
}
