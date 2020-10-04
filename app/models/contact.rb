# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  contact     :text
#  respond     :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  building_id :integer
#
# Indexes
#
#  index_contacts_on_building_id  (building_id)
#
class Contact < ApplicationRecord
  belongs_to :building

  validates :contact, presence: true, length: { maximum: 40}
  validates :respond, presence: true, length: { maximum: 40}
  validates :status, presence: true, length: { maximum: 10}
end
