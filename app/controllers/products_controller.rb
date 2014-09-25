class ProductsController < InheritedResources::Base
 
 # 	def new
 #    @product = Product.new
 # 	end

	def create
    @product = Product.new(params[:id])    
    @product.save
    @product.update_attributes!(product_params)


    if @product.save
    	redirect_to product_path(@product)
    else
    	redirect_to index
    end
 	end

 	def update
 	    @product.update_attributes!(product_params)

 	  if @product.save
    	redirect_to product_path(@product)
    else
    	redirect_to index
    end
 	end


 #  def show
 #    @product = Product.find(params[:id])
 #  end

 #  def index
 #    @products = Product.all
 #  end

	private
	  def product_params
      params.require(:product).permit(:name, :date, :image, :clock)
    end
	end

	

