class Business < ApplicationRecord
  has_many :deals
  geocoded_by :address
  # after_validation :geocode

  def address
    [street, suburb, state, postcode].compact.join(', ')
  end

  after_validation :geocode, if: ->(obj) { obj.will_save_change_to_street? || obj.will_save_change_to_suburb? || obj.will_save_change_to_state? || obj.will_save_change_to_postcode? }
end
