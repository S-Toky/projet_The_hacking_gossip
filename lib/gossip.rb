
require 'csv'


class Gossip
	attr_reader :author, :content

		def initialize(content, author)
			@content  = content
			@author = author
		end

		def save
			CSV.open("db/gossip.csv", "a+") do |csv|
				csv << ["#{@content}", "#{@author}"]
			end
		end	

		def self.all
			all_gossips = []
			CSV.open("db/gossip.csv", "r") do |csv|
				 csv.each do |ligne|
				 	gossip_provisoire = Gossip.new(ligne[1], ligne[0]) 
					all_gossips << gossip_provisoire
				 end
			end
			return all_gossips
		end
end

