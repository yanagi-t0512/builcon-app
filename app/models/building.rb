# == Schema Information
#
# Table name: buildings
#
#  id            :integer          not null, primary key
#  customer_name :string
#  property_name :string
#  room_number   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Building < ApplicationRecord
  has_many :contacts, dependent: :delete_all

  validates :property_name, presence: true, length: { maximum: 15}
  validates :room_number, presence: true, length: { maximum: 10}
  validates :customer_name, presence: true, length: { maximum: 10}

  def self.search(search)
    if search
      where(['property_name LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
