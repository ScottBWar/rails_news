class User < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :votes
  has_mnay :comments
  has_many :voted_posts, through: :votes, source: :post
  has_many :commented_posts, through: :comments, source: :comment

end
