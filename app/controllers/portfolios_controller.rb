class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all 
	end
	def new
		@portfolio_item = Portfolio.new
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
  	 @portfolio_item = Portfolio.find(params[:id])

  end
  def show
  end
  def update
  	   @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(port_params)
        format.html { redirect_to portfolios_path, notice: 'Article successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def port_params
      params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, :id)
    end
end