class Schedule < ActiveRecord::Base
  has_many :moves
  has_many :equipment

  accepts_nested_attributes_for :moves, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :equipment, reject_if: :all_blank, allow_destroy: true
  
  validates :lh_region, :orig, :dest, :rail, presence: true
end
