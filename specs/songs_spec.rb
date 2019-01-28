require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")

class TestSongs < Minitest::Test

  def setup
    @song_1 = Songs.new("We, will rock you", "Queen")
  end

  def test_song_has_a_title
    assert_equal("We, will rock you", @song_1.title())
  end

  def test_song_has_an_artist
    assert_equal("Queen", @song_1.artist())
  end

end
