class PedalHappiesController < InheritedResources::Base

  private

    def pedal_happy_params
      params.require(:pedal_happy).permit(:name, :description)
    end
end

