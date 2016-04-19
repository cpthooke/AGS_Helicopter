holder = 0
rotor = "Sphere004"
tailRotor = "Sphere003"
rotorPath = execute ("$'"+ rotor + "'")
tailRotorPath = execute ("$'"+ tailRotor + "'")
rot = angleaxis holder [0, 0, 1]
tailRot = eulerangles 181 0 0

animate off
deleteKeys objects #allKeys

Rollout RL_UiTest "Animate"
(
	label lab1 "Press to animate!"
	button btn_ok "Animate!"
	on btn_ok pressed do
	(
		animate on
		(
			--rotate rotorPath rot
			--rotate tailRotorPath tailRot
			at time animationRange.start 
				(
					rotate rotorPath rot
				)--; tailRotorPath)
			at time 100 
				(
					holder = 300
					rotate rotorPath rot
				)--; rotate tailRotorPath tailRot)
			playanimation()
		)
	)
)
createdialog RL_UiTest