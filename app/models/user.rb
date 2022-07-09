class User < ApplicationRecord
  has_many :reports
  has_many :images, through: :reports
end
