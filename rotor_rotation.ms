rotor = "Sphere004"
base = "Cylinder005"
tailRotor = "Sphere003"
tailRotorBase = "Cylinder006"
rotorPath = execute ("$'"+ rotor + "'")
basePath = execute ("$'"+ base + "'")
tailRotorPath = execute ("$'"+ tailRotor + "'")
tailRotorBasePath = execute ("$'"+ tailRotorBase + "'")
rot = eulerangles 0 0 181
tailRot = eulerangles 181 0 0

Rollout RL_UiTest "Animate"
(
	button btn_ok "Animate!"
	on btn_ok pressed do
	(
		animate on
		(
			at time 0(rotate rotorPath rot; rotate basePath rot; rotate tailRotorPath tailRot; rotate tailRotorBasePath tailRot)
		)
	)
)
createdialog RL_UiTest