require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user not valid at new" do
    assert_not User.new.valid?
  end
end
