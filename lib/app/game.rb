require "bundler"
Bundler.require

require_relative 'player.rb'
require_relative 'board.rb'

class Game
    attr_reader :win, :win_condition
    def initialize (name1, name2)
        @player1 = Player.new(name1, "X")
        @player2 = Player.new(name2, "O")
        @board = Board.new
    end


    def one_turn 
         #structure d'un tour : 
         #on affiche le tableau de jeu 
            puts " #{@board.board_case1.symbol} | #{@board.board_case2.symbol} | #{@board.board_case3.symbol} "
            puts "-------------"
            puts " #{@board.board_case4.symbol} | #{@board.board_case5.symbol} | #{@board.board_case6.symbol} "
            puts "-------------"
            puts " #{@board.board_case7.symbol} | #{@board.board_case8.symbol} | #{@board.board_case9.symbol} "
             
    
        
            

        #defini quel joueur doit jouer   
        t = 1
        while t <=9
            if t%2 == 1
                puts "C'est #{@player1.name} qui joue !"
            elsif t%2 == 0
                puts "C'est #{@player2.name} qui joue !"
            end
            #affiche le menu
            puts "#---------------------------------#"
            puts "Sur quelle case veux-tu jouer ?"
            puts "1 - A1"
            puts "2 - A2"
            puts "3 - A3"
            puts "4 - B1"
            puts "5 - B2"
            puts "6 - B3"
            puts "7 - C1"
            puts "8 - C2"
            puts "9 - C3"
            puts "#---------------------------------#"
            print "> "
            choix = gets.chomp

            #choix du joueur
                if t%2 == 1
                    @board.change_board_case(choix, @player1.symbol) #on push dans le board le choix et le symbole du joueur
                elsif t%2 == 0
                    @board.change_board_case(choix, @player2.symbol)
                end
            
            #on affiche le tableau de jeu modifié
            puts " #{@board.board_case1.symbol} | #{@board.board_case2.symbol} | #{@board.board_case3.symbol} "
            puts "-------------"
            puts " #{@board.board_case4.symbol} | #{@board.board_case5.symbol} | #{@board.board_case6.symbol} "
            puts "-------------"
            puts " #{@board.board_case7.symbol} | #{@board.board_case8.symbol} | #{@board.board_case9.symbol} "
            
        
            win_condition #détermine le gagnant
            if @win == true
                if t%2 == 1
                    puts "#{@player1.name} as gagné!"
                else
                    puts "#{@player2.name} as gagné!"
                end
            end
             t += 1
            break if @win == true
        end
        if @win == false
        puts "Match nul, dommage !"
        end
        
    end 


    def win_condition # si une des combinaison est true fin de jeu afficher le gagnant. 
        @win = false
        if @board.board[0].symbol == @board.board[1].symbol  &&  @board.board[1].symbol == @board.board[2].symbol #Possibilité de combinaison gagnante: "1 2 3". 
            @win = true 
        end
        if @board.board[3].symbol == @board.board[4].symbol  &&  @board.board[4].symbol == @board.board[5].symbol #Possibilité de combinaison gagnante: "4 5 6" 
            @win = true
        end
        if  @board.board[6].symbol == @board.board[7].symbol  &&  @board.board[7].symbol == @board.board[8].symbol #Possibilité de combinaison gagnante: "7 8 9"
            @win = true
        end
        if @board.board[0].symbol == @board.board[3].symbol  &&  @board.board[3].symbol == @board.board[6].symbol #Possibilité de combinaison gagnante: "1 4 7"  
            @win = true
        end
        if @board.board[1].symbol == @board.board[4].symbol  &&  @board.board[4].symbol == @board.board[7].symbol #Possibilité de combinaison gagnante: "2 5 8"
            @win = true   
        end
        if @board.board[2].symbol == @board.board[5].symbol  &&  @board.board[5].symbol == @board.board[8].symbol #Possibilité de combinaison gagnante: "3 6 9"
            @win = true  
        end
        if @board.board[2].symbol == @board.board[4].symbol  &&  @board.board[4].symbol == @board.board[6].symbol #Possibilité de combinaison gagnante: "3 5 7"  
            @win = true  
        end
        if @board.board[0].symbol == @board.board[4].symbol  &&  @board.board[4].symbol == @board.board[8].symbol #Possibilité de combinaison gagnante: "1 5 9" 
            @win = true  
        end
    end

    def new_round # en fin de partie qu'elle soit gagnante ou nul on propose de relancer la partie ou non. 
        puts " Voulez-vous relancer une partie? (Y/N)"
        answer = gets.chomp
        if answer == "Y" ||  answer == "y"
            puts "#---------------------------------#"
            puts "Nouvelle partie !!"
            puts "#---------------------------------#"
            one_turn
            else
            puts "Bye, à une prochaine fois!"
        end
    end
end