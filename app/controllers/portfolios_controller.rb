class PortfoliosController < ApplicationController
  before_action :set_portfolio_items, only: [:edit, :show, :update, :destroy]
  layout 'portfolio'
	
  def index
		@portfolio_items = Portfolio.order(:position)
	end

  
  def angular
    @angular_portfolio_items = Portfolio.angular
  end
	
  def new
		@portfolio_item = Portfolio.new
    1.times { @portfolio_item.technologies.build }
	end
	
  def create
    @portfolio_item = Portfolio.new(port_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def show

  end

  def update
    respond_to do |format|
      if @portfolio_item.update(port_params)
        format.html { redirect_to portfolios_path, notice: 'Article successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy 
  	@portfolio_item.destroy
  	respond_to do |format|
  		format.html {redirect_to portfolios_path, notice: "Deleted successfully"}
  	end
  end

  private

  def port_params
      params.require(:portfolio).permit( :title,
                                         :subtitle, 
                                         :body, 
                                         :main_image, 
                                         :thumb_image,
                                         :id,
                                         technologies_attributes: [:name, :id]
                                        )
    end

    def set_portfolio_items
      @portfolio_item = Portfolio.find(params[:id])
    end
end
