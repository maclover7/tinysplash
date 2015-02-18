class Business < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :mission, length: { maximum: 144 }
end
