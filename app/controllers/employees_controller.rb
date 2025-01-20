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
  def edit
    @employee = Employee.find_by(id: params[:id])
  end
  def update
    @employee = Employee.find_by(id: params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path, notice: "Employee has been Updated successfully"
    else
      render :edit
    end
  end

  # def destroy
  #   debugger
  #   @employee = Employee.find_by(id: params[:id])
  #   if @employee.destroy(employee_params)
  #     redirect_to employees_path, notice: "Employee has been deleted successfully"
  #   end
  # end

  
  # def destroy
  #   @employee = Employee.find_by(id: params[:id])
  #   if @employee&.destroy
  #     redirect_to employees_path, notice: "Employee has been deleted successfully"
  #   else
  #     redirect_to employees_path, alert: "Employee could not be deleted"
  #   end
  # end
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path, notice: "Employee was successfully deleted."
  end
  def show
    @employee = Employee.find_by(id: params[:id])
  end
end

# def edit
#   @employee = Employee.find_by(id: params[:id])

#   if @employee.nil?
#     redirect_to employees_path, alert: "Employee not found."
#   elsif @employee.update(employee_params)
#     redirect_to employees_path, notice: "Employee has been updated successfully."
#   else
#     render :edit
#   end
# end

# if @employee.nil?
#   redirect_to employees_path, alert: "Employee not found."
# else
#   @employee = Employee.update()
# end