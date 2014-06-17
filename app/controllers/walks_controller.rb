class WalksController < ApplicationController
	def index
		@walks = Walk.all
	end
	
	def show
		@walk = Walk.find params[:id]
	end
	
	def create 
		Walk.create(walk_params)
	end
	
	def new
		@walk = Walk.new
	end
	
	def destroy
		@walk = Walk.find params[:id]
		@walk.destroy
		redirect_to walks_path	
	end
	
	def edit
		@walk = Walk.find params[:id]
	end
	
	def update
		@walk = Walk.find params[:id]
		if @walk.update(walk_params)
			redirect_to walks_path
		else
			render :action => :edit
		end
	end
	
	private

		def walk_params
			params.require(:walk).permit(:flag_1, :flag_2)
		end
end