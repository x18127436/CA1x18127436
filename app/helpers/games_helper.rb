module GamesHelper

  def game_author(game)
    user_signed_in? && current_user.id == game.user_id
  end

end
