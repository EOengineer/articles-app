class Article < ActiveRecord::Base

  validates :title, :summary, presence: true

  has_many :comments
end
