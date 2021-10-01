class Profile < ApplicationRecord
  validates :name, :phone, presence: true
end
