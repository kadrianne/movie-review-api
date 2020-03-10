class User < ApplicationRecord
    has_many :review
    has_many :movie, through: :review
end
