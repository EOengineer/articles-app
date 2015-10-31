class Comment < ActiveRecord::Base
  validates :body, :article_id, presence: true

  belongs_to :article
end
