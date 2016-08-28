class Artist < ApplicationRecord
  has_many :paintings
  has_many :galleries, through: :paintings
  has_many :museums, through: :galleries
  accepts_nested_attributes_for :paintings, reject_if: proc { |attributes| attributes['title'].blank? }
end
