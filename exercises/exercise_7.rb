require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :name, presence: true
  validates :last_name, presence: true
  validates_numericality_of :hourly_rate, :greater_than => 40
  validates_numericality_of :hourly_rate, :less_than => 200
  validates :store, presence: true
end
class Store < ActiveRecord::Base
  validates :annual_revenue, numericality: { only_integer: true }
  validates_numericality_of :annual_revenue, :greater_than => 0
  validates_length_of :name, minimum: 3
end
puts "enter a store name"
@input = $stdin.gets.chomp
@store3 = Store.create(name: @input)
puts @store3.errors.full_messages