require 'elasticsearch/model'
class Film < ApplicationRecord
 # include Elasticsearch::Model
 # include Elasticsearch::Model::Callbacks
  acts_as_votable
  mount_uploader :picture, PictureUploader
  validates :name, presence: true, length: { in: 3..40 }
  validates :description, presence: true, length: {in: 30..800}
  validates :picture, presence: true
  validates :actor, presence: true, length: { minimum: 10}
  validates :producer, presence: true, length: { minimum: 10}
  has_many :comments, as: :commentable, dependent: :delete_all
  #Film.__elasticsearch__.create_index!
 # Film.import

end
