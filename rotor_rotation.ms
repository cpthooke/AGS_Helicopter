rotor = "Sphere004"
tailRotor = "Sphere003"
rotorPath = execute ("$'"+ rotor + "'")
tailRotorPath = execute ("$'"+ tailRotor + "'")
--rot = angleaxis 0 [0, 0, 1]
--tailRot = eulerangles 181 0 0

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
			at time animationRange.start 
				(
					rotate rotorPath (angleaxis 0 [0, 0, 1])
					rotate tailRotorPath (angleaxis 0 [-1, 0, 0])
				)
			at time animationRange.end 
				(
					holder = 360
					rotate rotorPath (angleaxis 360 [0, 0, 1])
					rotate tailRotorPath (angleaxis 360 [1, 0, 0])
				)
			playanimation()
		)
	)
)
createdialog RL_UiTest