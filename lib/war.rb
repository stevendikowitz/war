require_relative 'card'
require_relative 'deck'
require_relative 'hand'
require_relative 'player'

class War

  attr_accessor :total_pool, :face_up_pool, :face_down_pool, :deck, :hand
  attr_reader :player_one, :player_two

  def initialize(player_one = Player.new("player_one"), player_two = Player.new("player_two"))
    @deck = Deck.new
    @player_one = player_one
    @player_two = player_two

    @face_up_pool = Hash.new { |hash, key| hash[key] = [] }
    @face_down_pool = []
    deal_hands
  end
  
  #deals cards to players in alternating pattern until the deck is empty.
  def deal_hands
  end

  #adds one card from each player to the face_down_pool
  def tiebreaker
  end

  #adds the total_pool to player with winning card and then resets the pools.
  def pay_winner
  end

  #resets face_up_pool and face_down_pool to original state
  def reset_pools
  end

  #adds one card from each player to face_up_pool
  def lay_cards
  end

  def play
    until over?
      lay_cards
      tie ? tiebreaker : pay_winner
    end

    puts declare_winner
  end

  def over?
    player_one.hand.empty? || player_two.hand.empty?
  end

  def tie
    current_card(player_one).ties?(current_card(player_two))
  end

  def declare_winner
    player_one.hand.empty? ? "#{player_two.name} wins!" : "#{player_one.name} wins!"
  end

  def current_card(player)
    face_up_pool[player].last
  end

end
