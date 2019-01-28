require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class TestRooms < Minitest::Test

  def setup()
    @room_1 = Rooms.new("Goth")
    @guest_1 = Guests.new("Richmond")
    @guest_2 = Guests.new("Oliver")
    @song_1 = Songs.new("Christian Woman")
    @song_2 = Songs.new("Black no.1")
  end

  def test_room_has_a_name()
    assert_equal("Goth", @room_1.name())
  end

  def test_guest_number_starts_at_0()
    assert_equal(0, @room_1.number_of_guests())
  end

  def test_check_in_guest()
    @room_1.add_guest(@guest_1)
    assert_equal(1, @room_1.number_of_guests())
  end

  def test_check_out_guest()
    @room_1.add_guest(@guest_1)
    @room_1.add_guest(@guest_2)
    @room_1.remove_guest(@guest_1)
    assert_equal(1, @room_1.number_of_guests())
  end


  def test_closing_time()
    @room_1.add_guest(@guest_1)
    @room_1.add_guest(@guest_2)
    @room_1.remove_everyone()
    assert_equal(0, @room_1.number_of_guests())
  end

  def test_songs_number_starts_at_0()
    assert_equal(0, @room_1.list_of_songs())
  end

  def test_add_song()
    @room_1.add_song(@song_1)
    assert_equal(1, @room_1.list_of_songs())
  end

  def test_remove_song()
    @room_1.add_song(@song_1)
    @room_1.add_song(@song_2)
    @room_1.remove_song(@song_1)
    assert_equal(1, @room_1.list_of_songs())
  end

end
