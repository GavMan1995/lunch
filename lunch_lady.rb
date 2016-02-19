require 'pry'
@main_dish_hash = {"beef" => 5.00, "sushi" => 10.00, "chicken" => 2.00, "pork" => 6.00}
@first_side = {"rice" => 1.50, "mashed potatoes" => 2.50, "vegetables" => 3.00}
@sec_side = {"fries" => 2.00, "jello" => 4.50, "beans" => 0.75}
@price = []

def main_food_choice
choice = gets.strip.downcase
  if choice == "quit"
    "come again"
    exit
  else
    @price << @main_dish_hash[choice]
  end
end

def main_dish
  @main_dish_hash.each do |food, price|
    puts "#{food} #{price}"
  end
end

def side_1_choice
  choice = gets.strip.downcase
  if choice == "quit"
    "come again"
    exit
  else
    @price << @first_side[choice]
  end
end

def side_1
  @first_side.each do |food, price|
    puts "#{food} #{price}"
  end
end

def side_2_choice
  choice = gets.strip.downcase
  if choice == "quit"
    "come again"
    exit
  else
    @price << @sec_side[choice]
  end
end

def side_2
  @sec_side.each do |food, price|
    puts "#{food} #{price}"
  end
end

def total
  total = 0.0
  @price.each do |price|
    total += price
  end
  puts total
end

def main
  puts "--Lunch Menu--\ntype out main item to choose\n"
  main_dish
  main_food_choice
  puts "\nthank you, now what would you like for your first side dish"
  side_1
  side_1_choice
  puts "\nnow what would you like as your second side"
  side_2
  side_2_choice
  print "\nyour total is: "
  total
  puts "type new for new order"
  _new = gets.strip
    case _new
    when "new"
      main
    else
      puts "thankyou come again"
    end
end

main
