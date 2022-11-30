class AvailabilitySerializer < ActiveModel::Serializer
  attributes :id, :day_of_week, :start, :end
end
