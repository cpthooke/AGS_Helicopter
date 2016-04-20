using UnityEngine;
using System.Collections;

public class generate : MonoBehaviour
{
    public GameObject wallShort;
    public GameObject wallLong;

    // Use this for initialization
    void Start ()
    {
        InvokeRepeating("Create", 1.0f, 1.5f);
	}
	
	// Update is called once per frame
	void Create ()
    {
        int digit = Random.Range(0, 2);
        if (digit == 0)
            Instantiate(wallShort);
        else if (digit == 1)
            Instantiate(wallLong);
    }
}
