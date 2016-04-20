using UnityEngine;
using System.Collections;

public class cube : MonoBehaviour {

    public Vector2 velocity = new Vector2(-4, 0);
    private Rigidbody2D vel;
	// Use this for initialization
	void Start ()
    {
        vel = GetComponent<Rigidbody2D>();
    }

    // Update is called once per frame
    void Update ()
    {
        vel.velocity = velocity;
	}
}
