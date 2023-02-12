# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  after_action :find_cart, only: [:create]
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private 
  
  def find_cart
    # Tìm thấy người dùng có cart thì trả về id bill đó
    @bill = Bill.where(user_id: params[current_user.id],status: 0).first
  
    if @bill.nil?
      @bill = Bill.create!([
        user_id: current_user.id
      ]).first
    end
    session[:cart_id] = @bill.id
    # Không có thì phải trả về id card mới
  end
end
