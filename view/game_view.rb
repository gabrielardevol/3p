class GameView
  def initialize
  end
  def display(array)
    start_distance = array[0].to_i
    wolf_to_pig_distance = array[1].to_i
    pig_to_house_distance = array[2].to_i
    # p "start distance " + start_distance.to_s
    # p "wolf to pig " + wolf_to_pig_distance.to_s
    # p "pig to house " + pig_to_house_distance.to_s
    # p "total_distance " + (array[0].to_i + array[1].to_i + array[2].to_i).to_s
  20.times do
    puts ""
  end
    if wolf_to_pig_distance <= 0
      puts "🌲" * start_distance.to_i + "🐺" + "🍖" +  "🌲" * pig_to_house_distance + "🏠"
    elsif array[2] > 0
      puts "🌲" * start_distance.to_i + "🐺" + "🌲" * wolf_to_pig_distance.to_i + "🐷" + "🌲" * (pig_to_house_distance - 1) + "🏠"
    elsif pig_to_house_distance <= 0
      puts "🌲" * (start_distance.to_i) + "🐺" + "🌲" * wolf_to_pig_distance.to_i + "🏠"
    end
  end

  def pig_wins
    puts "pig wins"
  end

  def pig_looses
    puts "pig looses"
  end
end
