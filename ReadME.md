Bonjour à vous!

Ce projet consiste à faire un jeu de morpions en utilisant Ruby seulement nous avons suivis les consignes du : 

<--------------------------------- 2.2.3. Niveau "on veut réfléchir mais aide-nous un peu" -------------------------------------------------->


<-------------------------------------------- Pour lancer le jeu dans le TERMINAL ----------------------------------------------------------->

lancer le fichier app.rb (racine du dossier) dans le terminal afin de lancer une partie de morpion. 

<---------------------------------- Ce jeu est composé de 4 classes donc 4 fichiers  -------------------------------------------------------->

Player: 
ce sont les joueurs. Il doit y avoir 2 instances de cette classe lors d'une partie. Il contient donc une variables d'instance: 
	- un joueur a un nom 
	- un symbole ("x" ou "o").

Board: 
c'est le plateau. Il doit y avoir une instance de cette classe lors d'une partie. Lorsque que l'on initialise le plateau, il doit instancier immédiatement 9 BoardCases (une par case). 

	- La Variables d'instance : le Board doit embarquer les 9 BoardCase du jeu afin de pouvoir les lire et les modifier facilement.Il faut 		les lui attribuer sous forme d'un array ou d'un hash. Aussi. 

	- Méthodes : le Board va s'occuper de faire le lien entre les BoardCases et le Game : il change les valeurs des BoardCases et vérifie 		en fonction de la combinaison des BoardCases si la partie est finie.


BoardCase: 
chacune des 9 instances de BoardCase correspond à l'état d'une case du plateau. 
	- Variables d'instance : une Boardcase est définie par sa position et son contenu (Soit elle est vide, soit elle a comme valeur le 		string "x", soit elle a comme valeur le string "o").



Game:  
cette classe s'occupe de gérer toute la partie. À l'initialisation elle crée : 
	- 2 instances de Player. 
	- 1 instance de Board.

	- Variables d'instance : tu peux lui rattacher les 2 players (sous forme d'un array)
		- le Board, et des informations annexes. 
	- Méthodes : Game permet de jouer un tour (demande au joueur ce qu'il veut faire et rempli la case). 
		- s'occupe de finir la partie si un joueur a gagné et propose aux joueurs de faire une nouvelle partie ensuite.






