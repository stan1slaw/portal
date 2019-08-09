require 'elasticsearch/model'
class Film < ApplicationRecord
 # include Elasticsearch::Model
 # include Elasticsearch::Model::Callbacks
  acts_as_votable
  has_many :actors_films, dependent: :destroy
  has_many :actors, through: :actors_films
  mount_uploaders :picture, PictureUploader
  validates :name, presence: true, length: { in: 3..40 }
  validates :description, presence: true, length: {in: 30..800}
  validates :producer, presence: true, length: { minimum: 10}
  has_many :comments, as: :commentable, dependent: :delete_all
  #Film.__elasticsearch__.create_index!
 # Film.import
  has_many :reviews
  belongs_to :franchise

  def franchise_name
    Rails.cache.fetch([:franchise, franchise_id, :name], expires_in: 1.week) do
      franchise.name
    end
  end

end
