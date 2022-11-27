class GameView
  def initialize
  end
  def display(array)
    p start_distance = array[0]
    p wolf_to_pig_distance = array[1]
    p pig_to_house_distance = array[2]

    if wolf_to_pig_distance <= 0
      puts "🌲" * start_distance.to_i + "🐺" + "🍖" +  "🌲" * pig_to_house_distance + "🏠"
    elsif array[2] > 0
      puts "🌲" * start_distance.to_i + "🐺" + "🌲" * wolf_to_pig_distance.to_i + "🐷" + "🌲" * (pig_to_house_distance - 1) + "🏠"
    elsif pig_to_house_distance == 0
      puts "🌲" * start_distance.to_i + "🐺" + "🌲" * wolf_to_pig_distance.to_i + "🏠"
    elsif pig_to_house_distance >= -1
      puts "🌲" * start_distance.to_i + "🐺" + "🌲" * (wolf_to_pig_distance.to_i + pig_to_house_distance) + "🏠"
    elsif wolf_to_pig_distance <= 0 && pig_to_house_distance <= 0
      puts "🌲" * start_distance.to_i + "🐺" + "🍖" +  "🌲" * pig_to_house_distance + "🏠"
    end
  end
end
