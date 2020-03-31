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

@store1.employees.create(first_name: "Yessino", last_name: "Nopanca", hourly_rate: 66)

@store1.employees.create(first_name: "Sally", last_name: "Waxyon", hourly_rate: 53)

@store2.employees.create(first_name: "Berk", last_name: "Ozer", hourly_rate: 200)

@store2.employees.create(first_name: "Jack", last_name: "Worrington", hourly_rate: 76)

@store2.employees.create(first_name: "Opalo", last_name: "Konkon", hourly_rate: 44)