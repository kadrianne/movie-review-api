class Movie < ApplicationRecord
    has_many :review
    has_many :user, through: :review
end
