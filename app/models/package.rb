class Package < ApplicationRecord
    has_many :meetings
    has_many :users, through: :meetings
    has_many :package_availability
    has_many :availabilities, through: :package_availability
end
