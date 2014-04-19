class Comment < ActiveRecord::Base
  validates :author, :content, presence:true
  validates :content, length: { minimum: 15,
    message: "Content must be at least 15 characters long."}
  belongs_to :post
end
