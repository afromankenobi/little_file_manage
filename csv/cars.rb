# Class to represent cars :)
class Car
  attr_accessor :year, :make, :model, :description, :price

  def initialize(year = nil, make = nil, model = nil, description = nil, price = nil)
    @year = year
    @make = make
    @model = model
    @description = description
    @price = price
  end

  def to_hash
    hash = {}
    instance_variables.each do |var|
      hash[var.to_s.delete('@')] = instance_variable_get(var)
    end
    hash
  end
end
