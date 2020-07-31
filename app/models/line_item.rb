class LineItem < ApplicationRecord
  belongs_to :game
  belongs_to :cart


  def total_price
    game.price.to_i * quantity.to_i
  end

end
