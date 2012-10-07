class AddNewsModel < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.references :item
    end
  end
end
