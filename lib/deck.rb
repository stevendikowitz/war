require_relative 'card'

# Represents a deck of playing cards.
class Deck
  # Returns an array of all 52 playing cards. Make sure to shuffle!
  def self.all_cards
  end

  def initialize(cards = Deck.all_cards)
  end

  # Returns the number of cards in the deck.
  def count
  end

  def empty?
  end

  # Takes single cards from the top of the deck.
  def take_card
  end

end
