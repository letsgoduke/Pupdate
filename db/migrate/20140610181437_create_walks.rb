class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|

      t.timestamps
    end
  end
end
