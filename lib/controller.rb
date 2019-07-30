require 'gossip'
require 'view'

class Controller
	attr_accessor :view, :gossip

	def initialize
		@view = View.new

	end

	def create_gossip
		params = @view.create_gossip
		@gossip = Gossip.new(params[:content],params[:author])
		#insertio en dur du contenue 
		gossip.save
	end

	def index_gossip
		potins = Gossip.all
		@view.index_gossip(potins)
	end
end
