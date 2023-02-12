class CartController < ApplicationController
  def show
    @cart = cookies[:cart].present? ? JSON.parse(cookies[:cart]) : []
    @total_price = @cart.sum { |item| Product.find(item["product_id"]).price * item["quantity"] }
  end
  
  

  def add
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

    redirect_to cart_path
  end
  
  def delete
    product = Product.find(params[:product_id])
    cart = JSON.parse(cookies[:cart])
    cart.delete_if { |item| item["product_id"] == product.id }
    cookies[:cart] = cart.to_json

    redirect_to cart_path
  end
  
  def edit_quantity
    product = Product.find(params[:product_id])
    cart = JSON.parse(cookies[:cart])
    item = cart.find { |i| i["product_id"] == product.id }
    item["quantity"] = params[:quantity].to_i
    cookies[:cart] = cart.to_json

    redirect_to cart_path
  end


#   def show
#     @cart = cart_items
#     @products = Product.find(@cart.keys)
#   end
  
#   private

#   def cart_items
#     return {} if cookies[:cart].nil?

#     JSON.parse(cookies[:cart]).transform_keys(&:to_i)
#   end
end