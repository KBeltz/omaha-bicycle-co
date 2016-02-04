class CoffeeAndTeasController < InheritedResources::Base

  private

    def coffee_and_tea_params
      params.require(:coffee_and_tea).permit(:brand, :description, :image)
    end
end

