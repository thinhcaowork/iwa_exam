class HomeController < WebApplicationController
    before_action :authenticate_user
end
