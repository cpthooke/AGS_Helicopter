rotor = "Sphere004"
tailRotor = "Sphere003"
body = "Sphere002"
rotorPath = execute ("$'"+ rotor + "'")
tailRotorPath = execute ("$'"+ tailRotor + "'")
bodyPath = execute ("$'"+ body + "'")
mat_obj = StandardMaterial()

animate off
deleteKeys objects #allKeys

Rollout RL_UiTest "Animate"
(
	slider speedSlide "Select your speed!" orient:#horizontal ticks:10 range:[0,10,5]
	colorPicker col "" color:(color 81 81 81)
	button btn_col "Select your colour!"
	label labAni "Press to animate!"
	button btn_ok "Animate!"

	on col changed new_col do mat_obj.diffuse = new_col
	on btn_col pressed do
	(
		bodyPath.material = mat_obj
	)
	
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
				holder = 360 * speedSlide.value
				rotate rotorPath (angleaxis holder [0, 0, 1])
				rotate tailRotorPath (angleaxis holder [-1, 0, 0])
			)
			playanimation()
		)
	)
)
createdialog RL_UiTest