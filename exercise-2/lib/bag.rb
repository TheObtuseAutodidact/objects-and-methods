require_relative './candy'

class Bag
  attr_accessor :candies

  def initialize
    @candies = []
  end

  def empty?
    candies.empty?
  end

  def count
    candies.count
  end

  def << (candy)
    candies << candy
  end

  def contains?(type_of_candy)
    candies.map { |candy| candy.type == type_of_candy}.include?(true)
    # better way?
  end

  def grab(type_of_candy)
    if contains?(type_of_candy)
      candies.delete(candies.select { |candy| candy.type == type_of_candy }[0])
    end
  end
    #candies.select { |candy| candy.type == type_of_candy }[0]
    # why does this return candy.type instead of just the candy object?

  def take(num)
    @candies.pop(num)
  end
 end
