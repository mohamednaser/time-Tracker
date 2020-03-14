# frozen_string_literal: true

class User < ApplicationRecord
  validates_length_of :name, within: 3..150, message: 'must have a valid length (3 , 150) chars'
end
