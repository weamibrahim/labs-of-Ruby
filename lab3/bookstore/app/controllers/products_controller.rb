class ProductsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "admin"



  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end

  def new 
    
    @product = Product.new

  end

  def create 
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to @product
    else
      @product.errors.full_messages
      # render :new, status: :unprocessable_entity 
    end  
  end 

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    
    if @product.update(product_params)
      redirect_to @product
    else
      render :new, status: :unprocessable_entity 
    end  
  
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path, status: :see_other
  end  

  private
    def product_params
      params.require(:product).permit(:name, :image, :price, :description,:user_id)
    end
end
