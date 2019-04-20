require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  test "room not valid at new" do
    assert_not Room.new.valid?
  end
end
