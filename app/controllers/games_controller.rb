class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
#   before_action :set_line_item, only: [:destroy]
#   before_action :not_referenced_by_any_line_item

  # GET /games
  # GET /games.json
  def index
    @games = Game.all.order("created_at desc")
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = current_user.games.build
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = current_user.games.build(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    #Need to choose: Do not allow to remove game or remove game + item or cart when it is pending on the cart
    #@game = Game.find(params[:id])
    #@cart = Cart.find(session[:cart_id])
    #@line_items = Line_Item.find(session[:game_id])
    #@cart.destroy
    if @game.present?
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game Removed. Otherwise, remove Item from your cart before.' }
      format.json { head :no_content }
    end
  end
  end

  #Lucas Double check
#  def destroy
#    @game = Game.find(params[:id])
#    if @game.present?
#        @game.delete
#        respond_to do |format|
#        format.html { redirect_to games_url, notice: 'Game Removed.' }
#        format.json { head :no_content }
#        end
#    end
#  end
  
  #def destroy
  #  @game = Game.find(params[:id])
#    @gameitems = Line_Items.find(params[:game_id])
#    @gamecart = Game.find(params[:cart_id])
  #  if @game.present?
#      if @game == line_items.game_id
#          respond_to do |format|
#          format.html { redirect_to games_url, notice: 'Remove Game first from cart.' }
#          format.json { head :no_content }
#          end
#      else
  #      @game.delete
  #        respond_to do |format|
  #        format.html { redirect_to games_url, notice: 'Game Removed.' }
  #        format.json { head :no_content }
  #        end
 #     end
   # end
   # end










  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:brand, :publisher, :description, :release_year, :genre, :title, :price, :image)
    end

#    def set_line_item
#      @line_item = LineItem.find(params[:id])
#    end
#    def line_item_params
#      params.require(:line_item).permit(:id)
#    end
end