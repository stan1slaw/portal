class Post < ApplicationRecord
  mount_uploaders :avatars, AvatarUploader
  has_many :taggings , dependent: :delete_all
  has_many :tags, through: :taggings
  validates :content, length: { in: 3..1000 }, presence: true
  validates :title, length: { in: 3..100 }, presence: true
  validates :avatars, presence: true
  def self.tagged_with(name)
    Tag.find_by!(name: name).posts
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
