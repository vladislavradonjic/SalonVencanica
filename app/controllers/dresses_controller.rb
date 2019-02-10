class DressesController < ApplicationController
	def index
		@dresses = Dress.all
	end

	def show
		@dress = Dress.find(params[:id])
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
				format.html { render :new }
			end
		end
	end

	def edit
		@dress = Dress.find(params[:id])
	end

	def update
		respond_to do |format|
			if @dress.update(dress_params)
				format.html { redirect_to dresses_path, notice: 'Izmene su sacuvane.'}
			else
				format.html { render :edit }
			end
		end
	end

	def destroy
		@dress = Dress.find(params[:id])

		@dress.destroy
		respond_to do |format|
			format.html { redirect_to dresses_path, notice: 'Haljina je obrisana.'}
		end
	end

	private
		def dress_params
			params.require(:dress).permit(:name, 
																		:short_desc, 
																		:long_desc, 
																		:kwrds, 
																		:main_img, 
																		:main_img
																		)
		end

end
