require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

sum = Store.sum(:annual_revenue)
puts "Total revenue for the entire company (all stores) is: $#{sum}"

avg = Store.average(:annual_revenue)
puts "Average annual revenue for all stores: $#{avg}"

big_stores = Store.where('annual_revenue < 1000000', true).count
puts "There are #{big_stores} which have more than $1 million in sales"
