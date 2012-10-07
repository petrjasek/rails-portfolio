class CreateEntities < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :authors
      t.string :collaborators
      t.references :item
    end

    create_table :items do |t|
      t.string :title
      t.string :teaser
      t.text :lead
      t.text :content
      t.string :dateline
      t.timestamps
    end

    create_table :images do |t|
      t.string :title
      t.string :caption
      t.integer :integer
      t.has_attached_file :file
      t.references :item
      t.timestamps
    end
  end
end
