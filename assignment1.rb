#Simple cashier example

puts "What is the amount due?"
amount_due = gets.to_f

puts "What is the amount tendered?"
amount_tendered = gets.to_f

change = amount_tendered - amount_due #changing this to two decimal points here was giving me an error when I was running .abs in the else statement 

time = Time.new

puts "===Thank You!==="

if change >= 0
	puts "The total change due is $#{"%0.2f" % change}"
	puts ""
	puts time.strftime("%m/%d/%Y %l:%M%p")
	puts "================"
else
	puts "WARNING: Customer still owes $#{"%0.2f" % change.abs}! Exiting..."
end