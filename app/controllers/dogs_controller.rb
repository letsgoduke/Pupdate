class DogsController < ApplicationController
	def create
		Dog.create(dog_params)
		
		redirect_to dogs_path
	end
	
	def new
		@dog = Dog.new
	end
	
	def update
		@dog = Dog.find params[:id]
		if @dog.update(dog_params)
			redirect_to dogs_path
		else
			render :action => :edit
		end
	end
	
	def edit
		@dog = Dog.find params[:id]
	end
	
	def destroy
		@dog = Dog.find params[:id]
		@dog.destroy
		redirect_to dogs_path
	end	
	
	def show
		@dog = Dog.find params[:id]
	end
	
	def index
		@dogs = Dog.all
	end

	private

		def dog_params
			params.require(:dog).permit(:name, :breed)
		end
end
