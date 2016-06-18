class Schedule < ActiveRecord::Base
  has_many :moves
  has_many :equipment

  accepts_nested_attributes_for :moves, allow_destroy: true
  accepts_nested_attributes_for :equipment, allow_destroy: true
  validates :lh_region, :orig, :dest, :rail, presence: true
end
