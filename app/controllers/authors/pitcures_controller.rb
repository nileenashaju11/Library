class Authors::PitcuresController < PitcuresController
	before_action :set_imagable

	def create
		super
	end

	private

	  def set_imagable
	  	@imagable = Author.find(params[:author_id])
	  end	
end
