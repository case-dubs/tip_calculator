## Where do position I put methods in Ruby? (when I put the method at the bottom of the page, it cuased an error)

def convert_percent_to_number(percent)
	(percent.split('%')[0].to_f.round(1))/100
end

print "What was the cost of your meal?:  "
meal = gets.chomp
meal.slice! "$"
meal = meal.to_f

print "At what rate would you like to tip?:  "
tip = convert_percent_to_number(gets.chomp)

print "What is the tax rate?: "
tax = convert_percent_to_number(gets.chomp)

tax_value = (tax * meal)

tip_value = (tip * meal)

meal_with_tax = meal + tax_value

total_cost = tax_value + tip_value + meal


puts "The pre-tax cost of your meal was $#{meal}."
puts "At #{tax*100}%, tax for this meal is $#{tax_value.round(2)}."
puts "At a #{tip*100}% tip rate, you should leave $#{tip_value.round(2)}."
puts "The grand total for this meal is then $#{total_cost.round(2)}."