class Transaction < ApplicationRecord
  attr_accessor :hours, :minutes

  scope :most_recent, -> { order(created_at: :desc) }

  has_one :group, foreign_key: 'id'
  has_one :user, foreign_key: 'id', primary_key: 'authorid'

  validates_length_of :name, within: 3..150, message: 'Must have a valid transaction name from 3 to 150 chars'

  validates :hours, numericality: { only_integer: true, greater_than: 0,
                                    less_than: 24, message: 'Should be from 0 to 24 maximum' }
  validates :minutes, numericality: { only_integer: true, greater_than: 0,
                                      less_than: 60, message: 'Should be from 0 to 60 maximum' }
end
