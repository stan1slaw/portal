require 'elasticsearch/model'
class Film < ApplicationRecord
  #searchkick  word_middle: [:name, :description, :producer, :time_create]
 # include Elasticsearch::Model
 # include Elasticsearch::Model::Callbacks
  acts_as_votable
  acts_as_commentable
  has_many :actors_films, dependent: :destroy
  has_many :actors, through: :actors_films
  mount_uploaders :picture, PictureUploader
  validates :name, presence: true, length: { in: 3..40 }
  validates :description, presence: true, length: {in: 30..800}
  validates :producer, presence: true, length: { minimum: 10}
  #Film.__elasticsearch__.create_index!
 # Film.import
  has_many :reviews
  belongs_to :franchise

 # def search_data
   # {
      #  name: name,
      #  description: description,
       # producer: producer,
        #time_create: time_create
  #  }
 # end

  def franchise_name
    Rails.cache.fetch([:franchise, franchise_id, :name], expires_in: 1.week) do
      franchise.name
    end
  end

end
