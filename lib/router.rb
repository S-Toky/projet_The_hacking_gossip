require 'controller'

class Router

	def initialize
		@controller = Controller.new #crée une instance @controller
	end

	def perform
		puts "BIENVENUE DANS THE GOSSIP PROJECT"

		while true
			# ON AFFICHE LE MENU
			puts "Tu veux faire quoi jeune mouss' ?"
			puts "1. Je veux créer un gossip"
			puts "2. Afficher les liste des potins"
			puts "3. Voulez vous supprimer des potsins"
			puts "4. Je veux quitter l'app"
			print"> "
			params = gets.chomp.to_i #choix de l'utilisateur
			case params
			when 1 
				puts "tu as choisi de créer un gossip"
				@controller.create_gossip
			when 2
				puts " voici les liste des potins"
				@controller.index_gossip
			when 4
				puts "A bientôt !"
				break #permet de sortir du boucle while

			else
				puts "Ce choix n'existe pas, merci de ressayer" #si le saisie est différent il retourne au debut du bocle while true
				#c'est pour cela que le boucke est infinie 
			end
		end
	end
end
