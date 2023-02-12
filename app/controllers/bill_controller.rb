class BillController < ApplicationController
  before_action :authenticate_user!
  def show
    @fake_cart = [
      {"product_id": "1", "quantity": 1}, {"product_id": "2", "quantity": 1}
  ].to_json

    byebug
    # @cart = cookies[:cart].present? ? JSON.parse(cookies[:cart]) : []
    @total_price = @cart.sum { |item| Product.find(item["product_id"]).price * item["quantity"] }
  end

  def create    
    # @cart = cookies[:cart].present
  end
end
