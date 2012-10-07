class Item < ActiveRecord::Base
    has_many :images, :order => :rank
    attr_accessible :title, :teaser, :lead, :content, :images, :images_attributes
    accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:file].blank? and a[:id].blank?  }
    validates :title, :presence => true
end
