require './lib/room'
require './lib/house'
require 'minitest/autorun'
require 'minitest/pride'

class RoomTest < Minitest::Test
  def setup
    @room = Room.new(:bedroom, 10, 13)
  end

  def test_it_exists
    assert_instance_of Room, @room
  end

  def test_category_returns_bedroom
    assert_equal :bedroom, @room.category
  end

  def test_room_area
    assert_equal 130, @room.area
  end

end
