class Report < ApplicationRecord
  belongs_to :marker, optional: true
  has_one :user, through: :marker
  has_many :images

  def image_urls
    images.each{|image| image.url}
  end

  def add_to_marker(obj=self)
    Marker.add_report obj
  end
end
