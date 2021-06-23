require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true )
Whistler = Store.create(name: "Whistler", annual_revenue: 1900000 , mens_apparel: true, womens_apparel: false )
Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000 , mens_apparel: true, womens_apparel: true )

@mens_stores = Store.where(mens_apparel: true, womens_apparel: true)
@mens_stores.each do |mens_store| 
  puts mens_store.name
  puts mens_store.annual_revenue
end
@womens_under_a_mill = Store.where(womens_apparel:true, annual_revenue: (0)..999999)
puts @womens_under_a_mill