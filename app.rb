require 'bundler'
require 'pry'
Bundler.require

require_relative "lib/Player"
require_relative "lib/game"
require_relative "lib/board"

game = Game.new
board = Board.new
while board.check_winners == false
    board.play_1(game.player1)
    board.check_winners
    if board.check_winners == false
        board.play_2(game.player2)
        board.check_winners
    else
        break
    end

end
game.is_winner
