class Bid < ActiveRecord::Base
  validates :maker, :maker_phone, :plan, :presence => true
end
