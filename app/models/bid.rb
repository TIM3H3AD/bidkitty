class Bid < ActiveRecord::Base
  validates :maker, :maker_phone, :plan, :presence => true
  has_many :streets, dependent: :destroy
end
