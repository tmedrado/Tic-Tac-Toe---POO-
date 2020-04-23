require 'bundler'
require_relative 'player'
require_relative 'board'


class Game

    attr_accessor :player1, :player2
    def initialize(player1 = "", player2 = "")
        @player1 = player1
        @player2 = player2
        first_contact
        
    end


    def first_contact
        puts "Hey! Welcome to this Tic-Tac-Toe! Please Write your names below:"
        puts "Player1:"
        play1 = gets.chomp
        puts "Player2:"
        play2 = gets.chomp
        @player1 = Player.new(play1)
        @player2 = Player.new(play2)
    end

    def is_winner
        puts "CONGRATS! WE HAVE A WINNER!!"
    end


end