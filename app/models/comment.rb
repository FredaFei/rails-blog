class Comment < ApplicationRecord
  belongs_to :article
  validates :article_id, presence: true
  # validates :user_id, presence: true
  validates :comment, presence: true, length: { minimum: 1, maximum: 300 }
end
