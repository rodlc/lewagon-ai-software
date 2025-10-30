require 'active_record'

class MediaType < ActiveRecord::Base
  has_many :tracks
end
