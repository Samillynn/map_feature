class Report < ApplicationRecord
  belongs_to :marker, optional: true
  belongs_to :user
  has_many :images

  def image_urls
    images.map{|image| image.url}
  end
end
