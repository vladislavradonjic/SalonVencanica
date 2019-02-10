class DressesController < ApplicationController
	def index
		@dresses = Dress.all
	end

	def new
		@dress = Dress.new
	end

	def create
		@dress = Dress.new(dress_params)

		respond_to do |format|
			if @dress.save
				format.html {redirect_to new_dress_path, notice: 'Nova haljina je snimljena'}
			else
				format.html {render :new}
			end
	end

	private
		def dress_params
			params.require(:dress).permit(:name, :short_desc, :long_desc, :kwrds, :main_img, :main_img)
		end
end
