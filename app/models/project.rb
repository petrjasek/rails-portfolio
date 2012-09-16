class Project < ActiveRecord::Base
    has_many :images, :as => :imageable
    attr_accessible :title, :teaser, :lead, :content, :images
end
