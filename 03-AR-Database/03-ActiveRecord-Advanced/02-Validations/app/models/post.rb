require "active_record"

class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  validates :user, presence: true
  validates :title, presence: true, length: { minimum: 5 }, uniqueness: { case_sensitive: false }
  validates :url,
            presence: true,
            format: { with: /\A(http|https):\/\/[a-z0-9]+([-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix }
end
