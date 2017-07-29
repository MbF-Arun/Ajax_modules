class CategoryController < ApplicationController
  protect_from_forgery :except => [:destroy, :update, :create]

  def categorybymenu  	
    @category = Category.where(menuid: params[:id])
    render json: @category  	
  end

  def create
    if request.post?
      Category.create(:name=> params[:name], :menuid=> params[:menuid])
    end
  end

  def update
    if request.put?
      Category.update(params[:id] , :name=> params[:name])  
      render json: { status: :ok}
    end
  end

  def destroy
    if request.delete?     
        @status_update = Category.where(id: params[:id])
        if @status_update.present?
           Category.destroy(params[:id])
        end
    end    
  end

end
