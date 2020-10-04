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
require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
