class RemoveDogsIdFromWalk < ActiveRecord::Migration
  def change
	remove_column :walks, :dogs_id
	add_reference :walks, :dog
  end
end
