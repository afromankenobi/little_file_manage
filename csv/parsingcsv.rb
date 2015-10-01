#!/usr/bin/ruby
require 'csv' # require csv to access CSV module
require_relative 'cars.rb' # Require the class that we will use

file = File.open('cars.csv')

# Open the file with CSV
csv = CSV.new(
  file.read,
  headers: true,
  header_converters: :symbol,
  skip_blanks: true
)

# Convert each CSV::Row object in a hash
hashes = csv.to_a.map(&:to_hash)

# cars variable to save all objects created
cars = []

# Iterate over hashes
hashes.each do |data|
  # data is each hash into hashes array

  puts data # show data hash in console

  tempcar = Car.new
  tempcar.year = data[:year]
  tempcar.make = data[:make]
  tempcar.model = data[:model]
  tempcar.description = data[:description]

  # push tempcar object to cars array
  cars << tempcar
end

cars.each_with_index do |car_object, index|
  # car_object represents each
  # new object from class Car we create
  # in the each of hashes

  puts "Car #{index}: #{car_object.to_hash}"
end
