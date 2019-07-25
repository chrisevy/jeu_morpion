require 'bundler'
require 'pry'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player.rb'
require 'app/game.rb'
require 'app/boardcase.rb'
require 'app/board.rb'


puts "Bonjour bienvenue dans le jeu du morpion" #initialise la partie 
puts "#---------------------------------#"
puts "Quel est le nom du joueur1?" #choix du nom du joueur 1 
print"> "
name1 = gets.chomp
puts "Tu joues avec les X"
puts "#---------------------------------#"
puts "Quel est le nom du joueur2?" #choix du nom du joueur 
print"> "
name2 = gets.chomp
puts "Tu joues avec les O"
puts "#---------------------------------#"

my_game = Game.new(name1, name2) #Initalise les 2 joueurs et crée le board. 
my_game.one_turn #Lance la partie. 
my_game.new_round #Propose de si Y/N nous voulons rejouer une partie avec les memes joueurs. 
        


