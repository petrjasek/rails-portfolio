class Project < ActiveRecord::Base
    has_many :images, :as => :imageable, :order => :rank
    attr_accessible :title, :teaser, :lead, :content, :images, :images_attributes
    accepts_nested_attributes_for :images
end
