class Business < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user

  validates :name, presence: true
  validates :mission, length: { maximum: 144 }
end
