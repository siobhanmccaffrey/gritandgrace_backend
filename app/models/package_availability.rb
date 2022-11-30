class PackageAvailability < ApplicationRecord
    belongs_to :package
    belongs_to :availability
end
