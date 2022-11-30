class PackageSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :number_of_meetings
end
