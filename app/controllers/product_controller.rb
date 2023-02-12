class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  # other actions here
end