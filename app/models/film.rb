class Film < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites

  mount_uploader :cover, FotoUploader
end
