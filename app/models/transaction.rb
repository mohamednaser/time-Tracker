class Transaction < ApplicationRecord
    attr_accessor :hours ,:minutes

    scope :most_recent, -> { order(created_at: :desc) }

    has_one :group , foreign_key: "id"
end
