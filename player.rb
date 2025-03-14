class Player
    WIDTH = 32 * 3
    HEIGHT = 46 * 3
    ROTATE_SPEED = 5
    VELOCITY_INCREASE_SPEED = 0.2
    MAX_VELOCITY = 10
    SLOW_DOWN_RATE = 0.99
  
    attr_reader :image, :x, :y, :speed, :fire_rate

    def initialize(image, x, y, speed, fire_rate)
        @x_velocity = 0
        @y_velocity = 0
        @image = image
        @x = x
        @y = y
        @speed = speed
        @fire_rate = fire_rate
        @projectiles = []
        @last_projectile_fired_frame = 0
        @sprite = Sprite.new(
          image,
          clip_width: 32,
          width: WIDTH,
          height: HEIGHT,
          x: x,
          y: y,
          rotate: 180,
          animations: {
            moving_slow: 1..2,
            moving_fast: 3..4
          }
        )
      end
      def animate_slow
        @sprite.play(animation: :moving_slow, loop: true)
      end
    