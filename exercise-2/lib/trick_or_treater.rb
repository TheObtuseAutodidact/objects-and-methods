class TrickOrTreater
  attr_accessor :bag, :sugar_level
  attr_reader :costume
  def initialize(costume=Costume.new(style))
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    costume.style
  end

  def has_candy?
    !bag.empty?
  end

  def candy_count
    bag.candies.count
  end

  def eat
    x = bag.take(1)
    @sugar_level += x[0].sugar
  end
  # why does this require the instance var @sugar_level?
  # why doesn't it accept sugar_level with attr_accessor?
end
