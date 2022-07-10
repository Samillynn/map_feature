class ReportSerializer < ActiveModel::Serializer
  attributes :id, :lonlat, :user, :description, :image_urls
  has_one :user
end
