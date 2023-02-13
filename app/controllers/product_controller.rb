class ProductController < ApplicationController
  def index
    @products = Product.all
  end
    
def add_cart
    product = Product.find(params[:product_id])
    
    if cookies[:cart].present?
      cart = JSON.parse(cookies[:cart])
    else
      cart = []
    end

    existing_item = cart.find { |item| item["product_id"] == product.id }

    if existing_item.present?
      existing_item["quantity"] += 1
    else
      cart << { "product_id" => product.id, "quantity" => 1 }
    end

    cookies[:cart] = cart.to_json

    redirect_to root_path
end

  # other actions here
end