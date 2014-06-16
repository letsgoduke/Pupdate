class DogsController < ApplicationController
	def create
	end
	
	def new
	end
	
	def edit
	end
	
	def show
		@dog = Dog.find params[:id]
	end
	
	def index
		@dogs = Dog.all
	end
end
