using SFML

window = RenderWindow("Sprite Example", 800, 600)
set_framerate_limit(window, 60)
event = Event()

white = Color(255, 255, 255)

sprite = Sprite()
texture = Texture("greenTank.png")
texture_size = get_size(texture)

set_texture(sprite, texture)
set_position(sprite, Vector2f(200.0, 300.0))
set_origin(sprite, Vector2f(texture_size.x / 2, texture_size.y / 2))

while isopen(window)
	while pollevent(window, event)
		if get_type(event) == EventType.CLOSE
			close(window)
		end
	end

	rotate(sprite, 2)

	clear(window, white)
	draw(window, sprite)
	display(window)
end