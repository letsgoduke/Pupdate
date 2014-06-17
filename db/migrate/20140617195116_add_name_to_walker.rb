class AddNameToWalker < ActiveRecord::Migration
  def change
    add_column :walkers, :name, :string
  end
end
