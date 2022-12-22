class HikeSerializer < ActiveModel::Serializer
  attributes :id, :review, :location_id, :user_id

end
