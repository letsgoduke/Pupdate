class BuildDog < ActiveRecord::Migration
  def change
	add_column :dogs, :name, :string
	add_column :dogs, :breed, :string
	add_column :dogs, :image_url, :string
	add_column :dogs, :age, :integer
	
	add_reference :dogs, :walker
  end
end
