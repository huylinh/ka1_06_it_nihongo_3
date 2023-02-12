module ApplicationHelper

    def current_cart
        session[:cart_id]
    end
end
