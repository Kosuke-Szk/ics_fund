class Micropost < ApplicationRecord
  mount_uploader :image, ImageUploader
  enum status: { treatment: 0, suvivor: 1 }
end
