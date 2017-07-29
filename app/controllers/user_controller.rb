class UserController < ApplicationController

  before_action :set_variables
  require "base64"

  def index
    
  end

  def login

    # if session[:current_user_bid] :
    #   redirect_to user_dashboard_path

    @skip_footer = true
    @skip_header = true 
    @skip_menu = true       
    # if request.post?
    #   result = Device.where("business_id = ? AND passcode = ?", params[:soid],params[:passcode]).count

    #   return get device id, soid 
    #   session[:current_user_bid] = soid
    #   base_auth = Base64.encode64('Send reinforcements')
    #   session[:base_auth] = base_auth

      
    #   # Device.find_by(business_id: params[:soid], passcode: ,params[:passcode]).attributes.slice('business_id', 'device_id')
    #   if result!=0
        
    #   end
    # end
  end

  def logout    
    session[:current_user_bid] = nil
    session[:base_auth] = nil
    redirect_to user_login_path
  end

  def dashboard
  end
end
