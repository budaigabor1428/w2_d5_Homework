require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")

class TestGuests < Minitest::Test

 def setup
   @guest_0 = Guests.new("John")
 end

 def test_guest_has_a_name
   assert_equal("John", @guest_0.name)
 end


end
