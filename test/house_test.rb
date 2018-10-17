require './lib/room'
require './lib/house'
require 'minitest/autorun'
require 'minitest/pride'

class RoomTest < Minitest::Test

  def setup
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)

  end

  def test_it_exists
    assert_instance_of House, @house
  end

  def test_the_price_is_right
    assert_equal "$400000", @house.price
  end

  def test_the_address_is_correct
    assert_equal "123 sugar lane", @house.address
  end

  def test_house_holds_rooms
    assert_equal [], @house.rooms
  end

  def test_there_are_two_instances_of_room_inside_my_house
    assert_instance_of Room, @room_1
    assert_instance_of Room, @room_2
  end

  def test_the_house_can_add_rooms
    assert_equal [] << @room_1, @house.add_room(@room_1)
    assert_equal @house.rooms, @house.add_room(@room_2)
    assert_equal @house.rooms, @house.add_room(@room_3)
    assert_equal @house.rooms, @house.add_room(@room_4)

  end

  def test_house_is_full_of_the_rooms_i_have_added
    # skip
    assert_equal [@room_1, @room_2], @house.rooms
    #having trouble with this one ^^ gonna come back
  end

  def test_the_house_returns_the_rooms_from_a_certain_category
    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
  end

  def test_the_houses_area
    assert_equal 1900, @house.area
  end


end
