class AddDefaultsToWalker < ActiveRecord::Migration
  def change
	change_column :walkers, :name, :string, :default => '', :null => false
	change_column :dogs, :name, :string, :default => '', :null => false
  end
end
