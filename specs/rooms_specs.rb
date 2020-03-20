require("minitest/autorun")
require('minitest/reporters')
require_relative("../guest")
require_relative("../rooms")
require_relative("../songs")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class RoomTest< MiniTest::Test

  def setup
    @room1 = Room.new("Rock Room", 4)
    @room2 = Room.new("Small Roon", 1)
    @song = Songs.new("Stone Sour", "Tired")
    @song2 = Songs.new("Sum 41", "In Too Deep")
    @guest = Guest.new("Jon Snow", 10)
  end


  def test_room_has_name()
    assert_equal("Rock Room", @room1.name)
  end

  def test_room_max_capacity()
    assert_equal(4, @room1.max_capacity)
  end

  def test_adding_songs()
    @room1.adding_songs(@song)
    @room1.adding_songs(@song2)
    assert_equal(2, @room1.songs.length())
  end

  # is there a better way to set up tests?
  def test_remove_songs()
    @room1.adding_songs(@song)
    @room1.adding_songs(@song2)
    @room1.remove_songs(@song)
    assert_equal(1, @room1.songs.length())
  end

  def test_guest_enter()
      @room1.guest_enter(@guest)
      assert_equal(1, @room1.guest.length)
  end

  def test_guest_leaves()
    @room1.guest_enter(@guest)
    @room1.guest_leaves(@guest)
    assert_equal(0, @room1.guest.length)
  end

# i need to get away to check the room is full and if so reject guest
# if guest.length >= rooms max
  def test_full_room()
   @room2.guest_enter(@guest)
   @room2.guest_enter(@guest)
   assert_equal(true, @room2.full_room)
  end






end
