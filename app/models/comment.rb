class Comment < ApplicationRecord

  belongs_to :film
  validates :body, length: {in: 3..400}, presence: true
end
