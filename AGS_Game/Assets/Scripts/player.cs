using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class player : MonoBehaviour {

    public Vector2 jump = new Vector2(0, 300);
    private Rigidbody vel;
    float lockPos = 0;

    void Start ()
    {
        vel = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update ()
    {
        Vector3 pos = transform.position;
        pos.z = -1;
        pos.x = -7;
        transform.position = pos;
        transform.rotation = Quaternion.Euler(lockPos, 90.0f, lockPos);

        if (Input.GetKeyDown("space"))
            {
                vel.velocity = Vector2.zero;
                vel.AddForce(jump);
            }
        Vector2 screenPos = Camera.main.WorldToScreenPoint(transform.position);
        if (screenPos.y > Screen.height || screenPos.y < 0)
            Die();
    }

    void OnTriggerEnter(Collider other)
    {
        Die();
    }

    void Die()
    {
        SceneManager.LoadScene("level");
    }

}
