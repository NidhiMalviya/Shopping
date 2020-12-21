class CartsController < ApplicationController
  def show
    @line_items = current_user.latest_order.line_items
  end
end
