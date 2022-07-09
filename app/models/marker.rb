class Marker < ApplicationRecord
  has_many :reports

  def self.add_report(report)
    # TODO
  end
end
