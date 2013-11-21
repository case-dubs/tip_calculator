print "What was the cost of your meal?:  "
meal = gets.chomp
meal.slice! "$"
meal = meal.to_f

print "At what rate would you like to tip?:  "
tip = gets.chomp.split('%')[0].to_f

print "What is the tax rate?: "
tax = gets.chomp.split('%')[0].to_f

tax_value = (tax * meal)/100

tip_value = (tip * meal)/100

meal_with_tax = meal + tax_value

total_cost = tax_value + tip_value + meal


puts "The pre-tax cost of your meal was $#{meal}."
puts "At #{tax}%, tax for this meal is $#{tax_value}."
puts "For a #{tip}% tip, you should leave $#{tip_value}."
puts "The grand total for this meal is then $#{total_cost}."