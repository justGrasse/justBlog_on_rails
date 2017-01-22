class User < ApplicationRecord
  has_many :blog_posts

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

end
