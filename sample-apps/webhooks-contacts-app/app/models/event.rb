class Event < ApplicationRecord
  def occured_at
    Time.at(self[:occured_at].to_i / 1000)
  end
end
