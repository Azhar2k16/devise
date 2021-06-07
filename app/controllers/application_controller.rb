class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    User.update_all confirmed_at: DateTime.now

    def after_sign_in_path_for(resource)
        user_path(resource)
    end
end
