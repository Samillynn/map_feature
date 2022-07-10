class Image < ApplicationRecord
  has_one :user, through: :report
  belongs_to :report, optional: true
  has_one_attached :file

  include Rails.application.routes.url_helpers
  def url
    url_for(file)
  end

end
