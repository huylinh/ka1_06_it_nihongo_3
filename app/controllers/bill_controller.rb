class BillController < ApplicationController
  before_action :authenticate_user!
  def show
    @cart = cookies[:cart].present? ? JSON.parse(cookies[:cart]) : []
    @total_price = @cart.sum { |item| Product.find(item["product_id"]).price * item["quantity"] }
  end

  def create

  end
end
