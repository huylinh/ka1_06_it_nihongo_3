class HomeController < ActionController::Base
    layout "application"
    def index
        render :index, status: :ok
    end
end
