class Blog < ApplicationRecord

  validates_presence_of :title, :body

  has_many :comments, as: :commentable
  
end
