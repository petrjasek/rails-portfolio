class AddRankToImage < ActiveRecord::Migration
  def change
    add_column :images, :rank, :integer
    add_index :images, :rank
  end
end
