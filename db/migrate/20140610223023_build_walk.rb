class BuildWalk < ActiveRecord::Migration
  def change
	add_column :walks, :flag_1, :boolean
	add_column :walks, :flag_2, :boolean
	
	add_reference :walks, :walker
	add_reference :walks, :dogs
  end
end
