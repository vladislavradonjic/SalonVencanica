class DressesController < ApplicationController
	def index
		@dresses = Dress.all
	end
end
