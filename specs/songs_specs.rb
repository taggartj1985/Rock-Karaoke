require("minitest/autorun")
require('minitest/reporters')
require_relative('../songs')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class SongsTest < MiniTest::Test

  def setup
    @songs1 = Songs.new("AC/DC", "Back In Black")
    @songs2 = Songs.new("RHCP", "Can't Stop")
    @songs3 = Songs.new("ZZ Top", "LA GRANGE")
  end

  def test_can_get_song_artist
    assert_equal("AC/DC", @songs1.artist)
    assert_equal("RHCP", @songs2.artist)
    assert_equal("ZZ Top", @songs3.artist)
  end

  def test_can_get_song_name
    assert_equal("Can't Stop", @songs2.songs_title)
  end

end
