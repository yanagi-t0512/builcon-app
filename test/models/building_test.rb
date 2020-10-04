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
require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
