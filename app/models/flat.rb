class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :booking
end
