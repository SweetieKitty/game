extends TextureButton


var start_pos := Vector2.ZERO

func _ready():
	call_deferred("setup_button")

func setup_button():

	start_pos = position
	if texture_normal:
		var img = texture_normal.get_image()
		if img:
			var bitmap = BitMap.new()
			bitmap.create_from_image_alpha(img)
			texture_click_mask = bitmap
	if not button_down.is_connected(_on_down):
		button_down.connect(_on_down)
	if not button_up.is_connected(_on_up):
		button_up.connect(_on_up)

func _on_down():
	position = start_pos + Vector2(4, 4)
	modulate = Color(0.7, 0.7, 0.7) 

func _on_up():
	position = start_pos
	modulate = Color(1, 1, 1)
