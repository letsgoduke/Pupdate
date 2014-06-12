class Dog < ActiveRecord::Base
	belongs_to :walker
	has_many :walks, through: :walker
end
