class City < ApplicationRecord
    has_many :patients
    has_many :doctors 
    # has_many :dates
end
