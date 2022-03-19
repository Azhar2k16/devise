class UsersController < ApplicationController
    
    before_action :require_admin, only: [:edit, :update, :ban, :destroy, :resend_confirmation_instructions]
    before_action :require_admin_or_inviter, only: [:resend_invitation]

    def index
        @users = User.all.order(created_at: :desc)
    end

    def edit
        @user = User.find(params[:id])
        
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      if @user.update(user_params)
        redirect_to @user, notice: "User was successfully updated."
      else
        render :edit
      end
    end

    def show
        @user = User.find(params[:id])
    end

    def ban
        @user = User.find(params[:id])
        if @user.access_locked?
            @user.unlock_access!
        else
            @user.lock_access!
        end
        redirect_to @user, notice: "User Access Locked: #{@user.access_locked?}"
        
    end
    

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, notice: 'User successfully  Deleted'
        
    end

    def resend_confirmation_instructions
        @user = User.find(params[:id])
      if @user.confirmed? ==false && @user.created_by_invite? == false
        @user.resend_confirmation_instructions
        redirect_to @user, notice: "Confirmation Instructions Were Resent!"
      else
        redirect_to @user, alert: "User already confirmed"
      end

    end

    def resend_invitation
        @user = User.find(params[:id])
      if  @user.invitation_accepted? == false
          @user = User.find(params[:id])
          @user.invite!
          redirect_to @user, notice: "Inviation Resent!"
      else
        redirect_to @user, alert: "User already confirmed"
      end

    end

    def require_admin_or_inviter
        @user = User.find(params[:id])
        unless current_user.admin? || @user.invited_by == current_user
          redirect_to root_path, alert: "You are not Authorized"
        end
    end
    
    private

    def user_params
      params.require(:user).permit(*User::ROLES)
    end

    def require_admin
      unless current_user.admin?
        redirect_to root_path, alert: "You are not Authorized"
    end



    
 end
end