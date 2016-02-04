class CustomsController < InheritedResources::Base

  private

    def custom_params
      params.require(:custom).permit(:image, :caption)
    end
end

