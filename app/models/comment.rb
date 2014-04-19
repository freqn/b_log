class Comment < ActiveRecord::Base
  validate :author, :content, presence:true
end
