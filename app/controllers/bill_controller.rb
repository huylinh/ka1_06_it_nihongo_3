class BillController < ApplicationController
  before_action :authenticate_user!
  before_action :read_cart
  after_action :save_item, only: :create
  def show 

  end

  def show_history
    @bill = Bill.all
  end 

  def showbilldetails
    @bill = Bill.find(params[:id])
  end

  def create    
    @bill = Bill.create!(
      user_id: current_user.id,
      status: 0,
      note: params[:note],
      total: @total_price,
    )

    redirect_to root_path, success: "Complete!"
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
  @cart = JSON.parse(cookies[:cart])
  @total_price = @cart.sum { |item| Product.find(item["product_id"]).price * item["quantity"] }
  end
end
