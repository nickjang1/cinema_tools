class Movie < ApplicationRecord
    validates :title, presence: true
    validates :genre, presence: true
    validates :rating, :numericality => { :greater_than => 0, :less_than_or_equal_to => 5 }
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
