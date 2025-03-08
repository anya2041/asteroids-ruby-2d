class Player
    WIDTH = 32 * 3
    HEIGHT = 46 * 3
    ROTATE_SPEED = 5
    VELOCITY_INCREASE_SPEED = 0.2
    MAX_VELOCITY = 10
    SLOW_DOWN_RATE = 0.99
  
    attr_reader :image, :x, :y, :speed, :fire_rate