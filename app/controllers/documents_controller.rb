class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  # private
  def document_params
    params.require(:document).permit(:doc_name, :doc_type, :employee_id, :image)
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to documents_path, notice: "Document has been created successfully"
    else
      render :new
    end
  end
  def edit
    @document = Document.find_by(id: params[:id])
  end
  def update
    @document = Document.find_by(id: params[:id])
    if @document.update(document_params)
      redirect_to documents_path, notice: "Document has been Updated successfully"
    else
      render :edit
    end
  end


  def destroy
    @document = Document.find_by(id: params[:id])
    if @document&.destroy
      redirect_to documents_path, notice: "Document has been deleted successfully"
    else
      redirect_to documents_path, alert: "Document could not be deleted"
    end
  end

  def show
    @document = Document.find_by(id: params[:id])
  end
end
