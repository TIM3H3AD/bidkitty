class Street < ActiveRecord::Base
  has_many :lots
  belongs_to :bid
end