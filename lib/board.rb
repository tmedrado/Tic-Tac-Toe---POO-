require 'bundler'
require_relative 'game'
require_relative 'Player'

class Board

    attr_accessor :elements, :counter


    def initialize(elements = ["1", "2", "3", "4", "5", "6", "7", "8", "9"])
        @elements = elements
    end

    def basic_board
        puts ""
        2.times do 
        puts " "*10 + "|" + " "*10 + "|" + " "*10
        end
        puts " "*4 + "#{@elements[0]}" + " "*5 + "|" + " "*4 + "#{@elements[1]}" + " "*5  + "|" + " "*5 + "#{@elements[2]}" + " "*4
        2.times do 
            puts " "*10 + "|" + " "*10 + "|" + " "*10
        end

        puts "-"*10 + "|" + "-"*10 + "|" + "-"*10

        2.times do 
            puts " "*10 + "|" + " "*10 + "|" + " "*10
        end
        puts " "*4 + "#{@elements[3]}" + " "*5 + "|" + " "*4 + "#{@elements[4]}" + " "*5  + "|" + " "*5 + "#{@elements[5]}" + " "*4
        2.times do 
            puts " "*10 + "|" + " "*10 + "|" + " "*10
        end

        puts "-"*10 + "|" + "-"*10 + "|" + "-"*10

        2.times do 
            puts " "*10 + "|" + " "*10 + "|" + " "*10
        end

        puts " "*4 + "#{@elements[6]}" + " "*5 + "|" + " "*4 + "#{@elements[7]}" + " "*5  + "|" + " "*5 + "#{@elements[8]}" + " "*4

        2.times do 
            puts " "*10 + "|" + " "*10 + "|" + " "*10
        end

    end

    def play_1(player1)
        basic_board
        puts "Hey, #{player1.name}! Choose a number on the panel to switch:"
        num = gets.chomp
        update_elements(@elements.map { |x| x == num ? 'X' : x })
    end

    def play_2(player2)
        basic_board
        puts "Hey, #{player2.name}! Choose a number on the panel to switch:"
        num = gets.chomp
        update_elements(@elements.map { |x| x == num ? 'O' : x })
    end

    def update_elements(new_elements)
        @elements = new_elements
    end

    def check_winners
        if elements[0] == elements[1] && elements[1] == elements[2]
            if elements[0] == "X"
                puts "PLAYER1 WINS!!"
            else
                puts "PLAYER2 WINS!!"
            end
        
        elsif elements[0] == elements[3] && elements[3] == elements[6]
            if elements[0] == "X"
                puts "PLAYER1 WINS!!"
            else
                puts "PLAYER2 WINS!!"
            end
        
        elsif elements[0] == elements[4] && elements[4] == elements[8]
            if elements[0] == "X"
                puts "PLAYER1 WINS!!"
            else
                puts "PLAYER2 WINS!!"
            end
        
         elsif elements[2] == elements[4] && elements[4] == elements[6]
            if elements[2] == "X"
                puts "PLAYER1 WINS!!"
            else
                puts "PLAYER2 WINS!!"
            end

        elsif elements[2] == elements[5] && elements[5] == elements[8]
            if elements[2] == "X"
                puts "PLAYER1 WINS!!"
            else
                puts "PLAYER2 WINS!!"
            end
        elsif elements[1] == elements[4] && elements[4] == elements[7]
            if elements[2] == "X"
                puts "PLAYER1 WINS!!"
            else
                puts "PLAYER2 WINS!!"
            end
        elsif elements[3] == elements[4] && elements[4] == elements[5]
            if elements[2] == "X"
                puts "PLAYER1 WINS!!"
            else
                puts "PLAYER2 WINS!!"
            end
        elsif elements[6] == elements[7] && elements[7] == elements[8]
            if elements[2] == "X"
                puts "PLAYER1 WINS!!"
            else
                puts "PLAYER2 WINS!!"
            end
        else
            return false
        end
    end


end
