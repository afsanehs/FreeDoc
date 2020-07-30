class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients
    belongs_to :city
    #belongs_to :speciality
    has_many :doctor_specialities
    has_many :specialities, through: :doctor_specialities
end
