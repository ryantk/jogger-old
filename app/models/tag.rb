class Tag < ActiveRecord::Base
  has_many :taggings

  validates_presence_of :title
end
