class HikeLocationSerializer < ActiveModel::Serializer
  attributes :id, :review, :location
  

  def location
    self.object.location
  end
end
