class MeetingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :package_id
end
