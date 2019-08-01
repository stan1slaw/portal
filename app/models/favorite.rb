class Favorite < ApplicationRecord
  belongs_to :film
  belongs_to :user
end
