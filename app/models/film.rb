class Film < ApplicationRecord
  belongs_to  :genre
  accepts_nested_attributes_for :genre

  mount_uploader :image, ImageUploader

end
