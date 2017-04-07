class Movie < ApplicationRecord
    validates :title, presence: true
    validates :genre, presence: true
    validates :rating, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5 }
end
