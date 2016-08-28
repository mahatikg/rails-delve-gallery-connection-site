class Gallery < ApplicationRecord
  belongs_to :museum
  has_many :paintings
  has_many :artists, through: :paintings
  accepts_nested_attributes_for :paintings, reject_if: proc { |attributes| attributes['title'].blank? }
end
