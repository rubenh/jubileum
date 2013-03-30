class Story < ActiveRecord::Base
  attr_accessible :description, :title, :photo, :name, :photo_cache

  validates_presence_of :title, :description, :name

  mount_uploader :photo, PhotoUploader
end
