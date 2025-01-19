class EmployeesController < ApplicationController
    def index
      @employees = Employee.all
    end
  
    def new
      @employee = Employee.new
    end
  
    # private
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :city, :state, :country, :email)
    end
  
  
  
    def create
      @employee = Employee.new(employee_params)
  
      if @employee.save
        redirect_to employees_path, notice: "Employee has been created successfully"
      else
        render :new
      end
    end
    # def edit
    #   @employee = Employee.find_by(id: params[:id])
    # end
    def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
          redirect_to employees_path, notice: "Employee updated successfully."
        else
          render :edit
        end
      end

      def delete
        @employee = Employee.find(params[:id])
        if @employee.destroy(employee_params)
          redirect_to employees_path, notice: "Employee deleted successfully."
        end
      end
      
  end


#   <%# <%= form_with model: @employee do |form| %> 
# <%# <%= form_with model: @employee, local: true do |form| %> %>