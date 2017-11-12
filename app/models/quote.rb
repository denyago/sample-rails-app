class Quote
  QUOTES = [
    "You can’t succeed coming to the potluck with only a fork. (Dave Liniger)",
    "The day soldiers stop bringing you their problems is the day you have stopped leading them. They have either lost confidence that you can help them or concluded that you do not care. Either case is a failure of leadership. (Colin Powell)",
    "Do not worry if you have built your castles in the air. They are where they should be. Now put the foundations under them. (Henry David Thoreau)"
  ].freeze

  def self.all
    QUOTES
  end

  def self.random
    QUOTES.sample
  end
end
