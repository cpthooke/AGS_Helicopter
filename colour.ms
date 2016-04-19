mat_obj = StandardMaterial()-- create standard material

rollout testcolor "Test Color"
(
colorPicker col "Bmc" color:(color 81 81 81)--create color pick
button ins "Assign Color to selection" --create button

on col changed new_col do mat_obj.diffuse = new_col --create new diffuse color for the StandardMarterial

on ins pressed do
(
$.material = mat_obj --- assign the color to the object
)

)
createdialog testcolor