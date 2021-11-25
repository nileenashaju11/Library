class Books::PitcuresController < PitcuresController
	before_action :set_imagable
	def create
		super
	end


	private

	  def set_imagable
	  	@imagable = Book.find(params[:book_id])
	  end	
end