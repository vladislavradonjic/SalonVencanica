class DressesController < ApplicationController
	before_action :set_dress, only: [:show, :edit, :update, :destroy]

	def index
		@dresses = Dress.all
	end

	def show
	end

	def new
		@dress = Dress.new
		5.times { @dress.dress_images.build }
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
		@dress.destroy
		respond_to do |format|
			format.html { redirect_to dresses_path, notice: 'Haljina je obrisana.'}
		end
	end

	private
		def set_dress
			@dress = Dress.friendly.find(params[:id])
		end

		def dress_params
			params.require(:dress).permit(:name, 
																		:short_desc, 
																		:long_desc, 
																		:kwrds, 
																		:main_img, 
																		:main_img,
																		dress_images_attributes: [:image]
																		)
		end

end
