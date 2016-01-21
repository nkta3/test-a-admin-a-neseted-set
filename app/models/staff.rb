class Staff < ActiveRecord::Base
  belongs_to :division
  mount_uploader :image, ImageUploader
end
