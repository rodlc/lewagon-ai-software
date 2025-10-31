require "active_record"
require_relative "../../config/fake_mailer"

class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some validation
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  # TODO: Add some callbacks
  before_validation :strip_email_whitespace
  after_create :send_welcome_email

  private

  def strip_email_whitespace
    self.email = email.strip if email.present?
  end

  def send_welcome_email
    FakeMailer.instance.mail(email, "Bienvenue sur ActiveRecord")
  end
end
