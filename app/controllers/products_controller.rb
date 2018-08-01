class ProductsController < ApplicationController

  def create

    @category = Category.find(params[:category_id])
    @category.products.build(product_params)
    # @category.save
    redirect_to category_path(@category)

    # @product = Product.new(product_params)
    # @product.category = Category.find(params[:category_id])
    # @product.save
    # redirect_to category_path(@product.category)

    # @product = Product.new(product_params)
    # @product.category = Category.find(params[:category_id])
    # @product.save
    # redirect_to @product.category


  end

    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price)
    end

end
