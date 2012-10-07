class Project < ActiveRecord::Base
    belongs_to :item, :validate => true
    attr_accessible :item, :authors, :collaborators, :year, :item_attributes
    accepts_nested_attributes_for :item
end
