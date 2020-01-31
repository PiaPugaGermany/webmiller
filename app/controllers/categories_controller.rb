class CategoriesController < InheritedResources::Base

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end

  private

    def category_params
      params.require(:category).permit(:name, :photo)
    end

end
