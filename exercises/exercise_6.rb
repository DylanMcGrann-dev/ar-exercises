require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Darth", last_name: "vader", hourly_rate: 55)
@store1.employees.create(first_name: "King", last_name: "Mcgrann", hourly_rate: 45)

@store2.employees.create(first_name: "Rick", last_name: "Sanches", hourly_rate: 60)
@store2.employees.create(first_name: "Deku", last_name: "Hero", hourly_rate: 55)
@store2.employees.create(first_name: "Eren", last_name: "Yager", hourly_rate: 45)