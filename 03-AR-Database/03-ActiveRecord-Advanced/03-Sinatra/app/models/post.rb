require "active_record"

class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  validates :user, presence: true
  validates :title, presence: true, length: { minimum: 5 }, uniqueness: { case_sensitive: false }
  validates :url,
            presence: true
end
