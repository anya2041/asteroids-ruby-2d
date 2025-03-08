class Asteroid
    WIDTH = 58
    HEIGHT = 61
    SPEEDS = (1..4).to_a
    ROTATATIONS = (-2..2).to_a
  
    def initialize
      scale = 0.5 + (rand * 1.5)
      speed = SPEEDS.sample
      @rotation = ROTATATIONS.sample
      @sprite = Sprite.new(
        'asteroid.png',
        x: rand(Window.width),
        y: rand(Window.height),
        width: WIDTH * scale,
        height: HEIGHT * scale,
        rotate: rand(360)
      )

      @x_velocity = Math.sin(@sprite.rotate * Math::PI / 180) * speed
      @y_velocity = -Math.cos(@sprite.rotate * Math::PI / 180) * speed
    end
  