class Availability < ApplicationRecord
    has_many :package_availability
    has_many :packages, through: :package_availability
end
