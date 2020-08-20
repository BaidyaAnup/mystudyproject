class Employees::NotesController < NotesController
    
    before_action :set_notable

	def create
		super
	end

	private
	
	def set_notable
		@notable = Employee.find(params[:employee_id])
	end
end