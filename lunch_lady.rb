require 'pry'
@main_dish_hash = {"beef" => 5.00, "sushi" => 10.00, "chicken" => 2.00, "pork" => 6.00}
@first_side = {"rice" => 1.50, "mashed potatoes" => 2.50, "vegetables" => 3.00}
@sec_side = {"fries" => 2.00, "jello" => 4.50, "beans" => 0.75}
@price = []

def food_choice(hash)
  choice = gets.strip.downcase
  if choice == "quit"
    "come again"
    exit
  elsif hash.keys.include?(choice)
    @price << hash[choice]
  else
    puts "dont understand"
    main_food_choice
  end
end

def choices(hash)
  hash.each do |food, price|
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

def order(hash)
  choices(hash)
  food_choice(hash)
end

@new = 'new'

while @new == "new"
  puts "--Lunch Menu--\ntype out main item to choose\n"
  order(@main_dish_hash)
  puts "\nthank you, now what would you like for your first side dish"
  order(@first_side)
  puts "\nnow what would you like as your second side"
  order(@sec_side)
  print "\nyour total is: "
  total
  puts "type new for new order"
  @new = gets.strip
end
#
# def main_dish
#   @main_dish_hash.each do |food, price|
#     puts "#{food} #{price}"
#   end
# end

# def side_choice(hash)
#   choice = gets.strip.downcase
#   if choice == "quit"
#     "come again"
#     exit
#   else
#     @price << hash[choice]
#   end
# end


# def side_1_choice
#   choice = gets.strip.downcase
#   if choice == "quit"
#     "come again"
#     exit
#   else
#     @price << @first_side[choice]
#   end
# end

# def side_1
#   @first_side.each do |food, price|
#     puts "#{food} #{price}"
#   end
# end

# def side_2_choice
#   choice = gets.strip.downcase
#   if choice == "quit"
#     "come again"
#     exit
#   else
#     @price << @sec_side[choice]
#   end
# end

# def side_2
#   @sec_side.each do |food, price|
#     puts "#{food} #{price}"
#   end
# end
