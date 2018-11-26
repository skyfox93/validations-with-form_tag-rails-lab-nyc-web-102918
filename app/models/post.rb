class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100, message: "post must be a least 100 characters"}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

end
