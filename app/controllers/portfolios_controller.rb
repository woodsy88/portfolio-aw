class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy] 
 
 #petergate - authetication for different user roles at controller level
 access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

layout 'portfolio'

  def index 
    @portfolio_items = Portfolio.by_position
    p @portfolio_items
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end

    render body: nil # dont try to render a view
  end

  def react
     @react_portfolio_items = Portfolio.react
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def show  
  end

  def create
      @portfolio_item = Portfolio.new(portfolio_params)
      respond_to do  |format|
        if @portfolio_item.save
          format.html {redirect_to(portfolios_path)}
        else
          format.html { render 'new' }
        end
    end
  end

  def edit
    
  end

  def update
    
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
         format.html { redirect_to (portfolios_path) }
        else
          format.html { render :edit }
      end  
    end
  end

   def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
    end
   end


  private

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end
  
  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body,
                                      :main_image,
                                      :thumb_image,
                                      technologies_attributes: [:id, :name, :_destroy],
                                      skill_ids: []
                                      )
  end
end
