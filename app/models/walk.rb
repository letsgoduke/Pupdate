class Walk < ActiveRecord::Base
	has_one :dog
	belongs_to :walker
end
