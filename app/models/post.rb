class Post < ActiveRecord::Base
  validates :song_title, :author, presence: true
end