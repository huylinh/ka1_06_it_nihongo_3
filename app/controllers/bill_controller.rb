class BillController < ApplicationController
  before_action :authenticate_user!
  before_action :read_cart
  after_action :save_item, only: :create
  def show 

  end

  def create    
    @bill = Bill.create!(
      user_id: current_user.id,
      status: 0,
      note: params[:note],
      total: @total_price,
    )
    byebug
    redirect_to root_path
  end

  private

  def save_item
    @cart.each do |item|
      Item.create!(
        product_id: item["product_id"],
        quantity: item["quantity"],
        bill_id: @bill.id,
        price: Product.find(item["product_id"]).price
      )
    end
  end

  def read_cart
    @fake_cart = [
      {"product_id": "1", "quantity": 1}, {"product_id": "2", "quantity": 1}
  ].to_json
  @cart = JSON.parse(@fake_cart)
  @total_price = @cart.sum { |item| Product.find(item["product_id"]).price * item["quantity"] }
  end
end
