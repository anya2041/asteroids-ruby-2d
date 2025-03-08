class GameScreen
    MAX_ASTEROIDS = 8
  
    def initialize(player)
      @stars = Array.new(100).map { Star.new }
      @player = Player.new(player.image, player.x, player.y, player.speed, player.fire_rate)
      @player.animate_slow
      @asteroids = []
    end
  
    def update
        if Window.frames % 2 == 0
          @stars.each { |star| star.move }
        end
    
        if Window.frames % 120 == 0 && @asteroids.size <= MAX_ASTEROIDS
          @asteroids.push(Asteroid.new)
        end

        