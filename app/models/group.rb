class Group < ApplicationRecord
    has_many :transactions

    validates_length_of :name, within: 3..150, message: 'Must have a valid group name from 3 to 150 chars'

end
