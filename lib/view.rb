#require 'pry'
require 'gossip'
class View
	def create_gossip
		puts "who is the author ?"
		author = gets.chomp 
		puts "what's your message ?"
		content = gets.chomp
		params = {}
		params = { content: content, author: author }
		return params 
	end

	def index_gossip(potins)
			i = 1
			potins.each do |value|
				puts "\t#{i}.#{value.author} => #{value.content}"
				i+=1
			end
	end
end

#binding.pry
