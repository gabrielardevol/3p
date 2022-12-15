require_relative "wolf_animation"
require_relative "house_animation"

#class HidingGameView
n = 23

margin = 5



blown = 3

1.times do
  array = []
  frame = 0

  (margin+1).times do
    array << "#{Animation.new(blown, margin).arrays_array(frame)}"

    House.new(n).array[0..-2].each do |row|
      puts "  "*margin + row
    end
    puts array[frame] + House.new(n).array[-1]
    frame += 1
  end

  puts "*"*10


  blown.times do
    n -= 1
    House.new(n).array.each do |row|
      puts "  "*margin + row
    end
  end
  blown += 2
end

# n = 0
# array = []
# (margin + blown + 1).times do
#   array << "#{Animation.new(blown, margin).arrays_array(n)}"
#   n += 1
# end

# frame = 0

# (margin + 1).times do
#   p "  "*margin + house.row6(23)
#   p "  "*margin + house.row5(23)
#   p "  "*margin + house.row4(23)
#   p "  "*margin + house.row3(23)
#   p "  "*margin + house.row2(23)
#   p array[frame] + house.row1(23)
#   frame += 1
#   sleep(0.5)

# end

# bricks = 23
# (blown).times do
#   bricks -=1
#   p "  "*margin + house.row6(bricks)
#   p "  "*margin + house.row5(bricks)
#   p "  "*margin + house.row4(bricks)
#   p "  "*margin + house.row3(bricks)
#   p "  "*margin + house.row2(bricks)
#   p array[frame] + house.row1(bricks)
#   frame += 1
#   sleep(0.5)
# end