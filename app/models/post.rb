class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :content, length: {minimum: 250}
  has_many :comments, dependent: :destroy
  belongs_to :user
end
