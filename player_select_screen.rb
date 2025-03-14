class PlayerSelectScreen
    def initialize
      @stars = Array.new(100).map { Star.new }
  
      title_text = Text.new('ASTEROIDS', size: 72, y: 40)
      title_text.x = (Window.width - title_text.width) / 2
  
      player_select_text = Text.new('SELECT YOUR PLAYER', size: 32, y: 120)
      player_select_text.x = (Window.width - player_select_text.width) / 2
  
      @players = [
        Player.new('player_1.png', Window.width * (1/4.0) - Player::WIDTH / 2, 240, 80, 80),
        Player.new('player_2.png', Window.width * (2/4.0) - Player::WIDTH / 2, 240, 100, 60),
        Player.new('player_3.png', Window.width * (3/4.0) - Player::WIDTH / 2, 240, 60, 100),
      ]