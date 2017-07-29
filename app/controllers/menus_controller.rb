class MenusController < ApplicationController
  protect_from_forgery :except => [:destroy, :update, :create]

  def index
    @menus = Menu.where(restid: session[:business_id])
    render json: @menus
  end

  def create
    if request.post?
      menu = Menu.create(:name=> params[:name], :restid=> session[:business_id])
      if menu.save

      else
        puts menu.errors.messages
        render json: menu.errors.messages
      end
    end
  end

  def update
    if request.put?
      @menu = Menu.update(params[:id] , :name=> params[:name])
      if @menu.valid?
        render json: { status: :ok}
      else
        render json: @menu.errors.messages
      end
    end
  end

  def destroy
    if request.delete?
      @status_update = Menu.where(id: params[:id])
      if @status_update.present?
        Menu.destroy(params[:id])
      else
        @status_update.errors.messages
      end
    end
  end

end
