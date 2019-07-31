class ActorsFilm < ApplicationRecord
  belongs_to :actor
  belongs_to :film
  validates :actor_id, uniqueness: { scope: :film_id }
end
