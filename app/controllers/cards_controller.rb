class CardsController < ApplicationController

  def show
    @column = Column.find(params[:column_id])
    @card = @column.cards.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @board = Board.find(params[:board_id])
    @column = @board.columns.find(params[:column_id])
    @card = @column.cards.create(card_params)
    redirect_to board_columns_path(@column)
  end

  def destroy
    @board = Board.find(params[:board_id])
    @column = @board.columns.find(params[:column_id])
    @card = @column.cards.find(params[:id])
    @card.destroy
    redirect_to board_path(@board)
  end

  private
  def card_params
    params.require(:card).permit(:name, :description)
  end

end
