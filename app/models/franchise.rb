class Franchise < ApplicationRecord

  has_many :films
  after_update :flush_name_cache

  def flush_name_cache
    Rails.cache.delete([:franchise,id,:name]) if name_changed?
  end
end
