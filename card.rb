class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
      @rank = rank
      @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

  class Deck
    def initialize
      
    end

    def shuffle
      @cards.shuffle!
    end

    def deal
      @cards.shift
    end

    def output
      @cards.each do |card|
        card.output_card
    end

    

  end
end

deck = Deck.new
deck.shuffle
deck.deal
deck.output
