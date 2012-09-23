class Image < ActiveRecord::Base
    belongs_to :imageable, :polymorphic => true
    has_attached_file :file, :styles => { :detail => "640x640#", :teaser => "210x210#", :thumb => "75x75#" }
    attr_accessible :title, :caption, :file, :rank, :imageable
    validates :file, :attachment_presence => true
end
