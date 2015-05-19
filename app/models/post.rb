class Post < ActiveRecord::Base
  belongs_to :author, class_name:"User", :foreign_key => :user_id
  has_many :comments
  has_many :commenters, through: :comments, source: :users
  has_many :votes
  has_many :voters, through: :votes, source: :user


end
