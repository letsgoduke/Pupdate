class DogsController < ApplicationController
	def create
	end
	
	def new
	end
	
	def edit
	end
	
	def show
		@dogs = Dog.all
	end

end
