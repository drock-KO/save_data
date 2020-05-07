class Like < ApplicationRecord
  belongs_to :tweet, counter_cache: :likes_count
  belongs_to :user
  validates_uniqueness_of :tweet_id, scope: :user_id
end
