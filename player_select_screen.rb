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
  
      @selected_player = 1
  
      animate_players
      add_player_masks
      set_player_stat_text
    end
  
    def update
      if Window.frames % 2 == 0
        @stars.each { |star| star.move }
      end
    end

    def animate_players
        @players.each_with_index do |player, index|
          if index == @selected_player
            player.animate_fast
          else
            player.animate_slow
          end
        end
      end
    
      def move(direction)
        if direction == :left
          @selected_player = (@selected_player - 1) % 3
        else
          @selected_player = (@selected_player + 1) % 3
        end
    
        animate_players
        add_player_masks
        set_player_stat_text
      end