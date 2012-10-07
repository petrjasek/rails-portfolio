class RenameImageIntegerToRank < ActiveRecord::Migration
  def up
      rename_column :images, :integer, :rank
  end

  def down
      rename_column :images, :rank, :integer
  end
end
