require "bundler"
Bundler.require



class Board
    attr_reader :board
    attr_accessor :board_case1, :board_case2, :board_case3, :board_case4, :board_case5, :board_case6, :board_case7, :board_case8, :board_case9, :choix_valide

    def initialize #array de board 
        @board = [@board_case1 = BoardCase.new("1", 1),
        @board_case2 = BoardCase.new("2", 2),
        @board_case3 = BoardCase.new("3", 3),
        @board_case4 = BoardCase.new("4", 4),
        @board_case5 = BoardCase.new("5", 5),
        @board_case6 = BoardCase.new("6", 6),
        @board_case7 = BoardCase.new("7", 7),
        @board_case8 = BoardCase.new("8", 8),
        @board_case9 = BoardCase.new("9", 9)]
    end
    
    def change_board_case(choix, symbol)
        case choix
        #selon choix position joueur
        #remplacer le contenu de la borne case correspondante avec le symbole du joueur 
        when "1" #choix de la case 1
            if @board[0].symbol == "1"
                @board[0].symbol = symbol
            else
                puts "Cette case est déjà remplie!"
            end
        when "2" 
            if @board[1].symbol == "2" 
                @board[1].symbol = symbol
            else
                puts "Cette case est déjà remplie!"
            end
        when "3"
            if @board[2].symbol == "3" 
                @board[2].symbol = symbol
            else
                puts "Cette case est déjà remplie!"
            end
        when "4" 
            if @board[3].symbol == "4" 
                @board[3].symbol = symbol
                
            else
                puts "Cette case est déjà remplie!"
                
            end
        when "5"
            if @board[4].symbol == "5"
                @board[4].symbol = symbol
            else
                puts "Cette case est déjà remplie!"
            end
        when "6" 
            if @board[5].symbol == "6"
                @board[5].symbol = symbol
            else
                puts "Cette case est déjà remplie!"
            end
        when "7" 
            if @board[6].symbol == "7" 
                @board[6].symbol = symbol
            else
                puts "Cette case est déjà remplie!"
            end
        when "8"
            if @board[7].symbol == "8" 
                @board[7].symbol = symbol
            else
                puts "Cette case est déjà remplie!"
            end
        when "9" 
            if @board[8].symbol == "9" 
                @board[8].symbol = symbol
            else
                puts "Cette case est déjà remplie!"
            end
        end
        
    end


    def win_condition
        @win = false
        if @board[0].symbol == @board[1].symbol  &&  @board[1].symbol == @board[2].symbol #combinaison 1 2 3 pour joueur 1
            @win = true 
        end
        if @board[3].symbol == @board[4].symbol  &&  @board[4].symbol == @board[5].symbol #combinaison 1 2 3 pour joueur 2
            @win = true
        end
        if  @board[6].symbol == @board[7].symbol  &&  @board[7].symbol == @board[8].symbol #combinaison 1 2 3 pour joueur 2
            @win = true
        end
        if @board[0].symbol == @board[3].symbol  &&  @board[3].symbol == @board[6].symbol #combinaison 1 2 3 pour joueur 2
            @win = true
        end
        if @board[1].symbol == @board[4].symbol  &&  @board[4].symbol == @board[7].symbol #combinaison 1 2 3 pour joueur 2
            @win = true   
        end
        if @board[2].symbol == @board[5].symbol  &&  @board[5].symbol == @board[8].symbol #combinaison 1 2 3 pour joueur 2
            @win = true  
        end
        if @board[2].symbol == @board[4].symbol  &&  @board[4].symbol == @board[6].symbol #combinaison 1 2 3 pour joueur 2
            @win = true  
        end
        if @board[0].symbol == @board[4].symbol  &&  @board[4].symbol == @board[8].symbol #combinaison 1 2 3 pour joueur 2
            @win = true  
        end
    end



end