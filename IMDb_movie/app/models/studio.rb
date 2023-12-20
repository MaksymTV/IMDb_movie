class Studio < ApplicationRecord
    has_many :movies
  
    validates :name, presence: true
    validates :address, presence: true
  end