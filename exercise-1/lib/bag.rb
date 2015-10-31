require_relative "./candy"

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

  def contains?(candy)
    @candies.map {|sweet| sweet.type == candy}.include?(true)
  end

end
