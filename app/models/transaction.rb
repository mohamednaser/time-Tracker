class Transaction < ApplicationRecord
    attr_accessor :hours ,:minutes

    scope :most_recent, -> { order(created_at: :desc) }

    has_one :group , foreign_key: "id"
    has_one :user , foreign_key: "id" , primary_key: "authorid"

end
