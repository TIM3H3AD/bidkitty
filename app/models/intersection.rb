class Intersection < ApplicationRecord
  validates :street_one, :street_two, :presence => true
end
