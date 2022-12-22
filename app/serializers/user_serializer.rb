class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :hikes, serializer: HikeLocationSerializer
end
