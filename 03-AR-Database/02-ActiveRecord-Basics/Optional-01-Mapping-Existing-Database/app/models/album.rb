require 'active_record'

class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :tracks

  validates :title, presence: true
  validates :artist, presence: true
end
