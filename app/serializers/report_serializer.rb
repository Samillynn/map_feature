class ReportSerializer < ActiveModel::Serializer
  attributes :id, :lonlat, :user, :description, :image_ids
  has_one :user
  has_many :image_ids
end
