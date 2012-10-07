class News < ActiveRecord::Base
    has_one :item
    accepts_nested_attributes_for :item
    attr_accessible :item
end
