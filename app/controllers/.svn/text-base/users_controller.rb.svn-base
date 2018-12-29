class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  # include AuthenticatedSystem
  
  # Protect these actions behind an admin login
  # before_filter :admin_required, :only => [:suspend, :unsuspend, :destroy, :purge]
  before_filter :find_user, :only => [:suspend, :unsuspend, :destroy, :purge]
  before_filter :not_logged_in_required, :only => [:new, :create] 
  before_filter :login_required, :only => [:show, :edit, :update]
  before_filter :check_administrator_role, :only => [:index, :destroy, :enable]

  def index
    @users = User.find(:all)
  end
  
  #This show action only allows users to view their own profile
  def show
      @user = current_user
  end
  
  # render new.rhtml
  def new
    @user = User.new
  end

	def create
		cookies.delete :auth_token
		@user = User.new(params[:user])
		@user.save!
		#Uncomment to have the user logged in after creating an account - Not Recommended
		#self.current_user = @user
		flash[:notice] = "Thanks for signing up! Please check your email to activate your account before logging in."
		redirect_to login_path    
		rescue ActiveRecord::RecordInvalid
		flash[:error] = "There was a problem creating your account."
		render :action => 'new'
   end

	def edit
		@user = current_user
	end
      
	def update
  	@user = User.find(current_user)
		if @user.update_attributes(params[:user])
        flash[:notice] = "User updated"
        redirect_to :action => 'show', :id => current_user
      else
        render :action => 'edit'
      end
	end
      
	def destroy
	  @user = User.find(params[:id])
	  if @user.update_attribute(:enabled, false)
	    flash[:notice] = "User disabled"
	  else
	    flash[:error] = "There was a problem disabling this user."
	  end
	  redirect_to :action => 'index'
	end

	def enable
	  @user = User.find(params[:id])
	  if @user.update_attribute(:enabled, true)
	    flash[:notice] = "User enabled"
	  else
	    flash[:error] = "There was a problem enabling this user."
	  end
	    redirect_to :action => 'index'
	end
   
  # Old definitions - using email authentication step (http://www.railsforum.com/viewtopic.php?id=14216)
  # def create
  #     cookies.delete :auth_token
  #     # protects against session fixation attacks, wreaks havoc with 
  #     # request forgery protection.
  #     # uncomment at your own risk
  #     # reset_session
  #     @user = User.new(params[:user])
  #     @user.register! if @user.valid?
  #     if @user.errors.empty?
  #       self.current_user = @user
  #       redirect_back_or_default('/')
  #       flash[:notice] = "Thanks for signing up!"
  #     else
  #       render :action => 'new'
  #     end
  #   end
  # 
  # def activate
  #   self.current_user = params[:activation_code].blank? ? :false : User.find_by_activation_code(params[:activation_code])
  #   if logged_in? && !current_user.active?
  #     current_user.activate!
  #     flash[:notice] = "Signup complete!"
  #   end
  #   redirect_back_or_default('/')
  # end
  # 
  def suspend
      @user.suspend! 
      redirect_to users_path
    end
  # 
  # def unsuspend
  #   @user.unsuspend! 
  #   redirect_to users_path
  # end
  # 
  # def destroy
  #   @user.delete!
  #   redirect_to users_path
  # end
  # 
  # def purge
  #   @user.destroy
  #   redirect_to users_path
  # end

protected
  def find_user
    @user = User.find(params[:id])
  end

end
