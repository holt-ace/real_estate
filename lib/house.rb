require 'pry'
class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = Array.new
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(cat)
    categorized_rooms = Array.new
    @rooms.map do |room|
      if room.category == cat
         categorized_rooms << room
      else
        puts "No rooms in this category"
      end
      binding.pry
    end
      categorized_rooms
  end

  def area
    house_area = Array.new
    @rooms.map do |room|
      room_area = room.length * room.width
      house_area << room_area
    end
  end

end
