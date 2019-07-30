class Actor < ApplicationRecord
  has_many :actors_films, dependent: :destroy
  has_many :films, through: :actors_films
  mount_uploader :avtor, AvatarUploader
end
