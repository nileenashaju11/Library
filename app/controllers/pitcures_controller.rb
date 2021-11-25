class PitcuresController < ApplicationController
	def new
		@pitcure = @imagable.pitcures.new
	end

	def create
		@pitcure = @imagable.pitcures.new(pitcure_params)
		@imagable.save
		redirect_to @imagable, notice: "Your image was successfully posted"
	end
    
    private

      def pitcure_params
      	params.require(:pitcure).permit(:image)
      end
end



