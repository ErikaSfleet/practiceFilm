class Film < ApplicationRecord
  mount_uploader :cover, FotoUploader
end
