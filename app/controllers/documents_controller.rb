class DocumentsController < ApplicationController

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to documents_path
    else
      render :new
    end
  end


  def show
    @document = Document.find(params[:id])
    BoxView::Session.create(
      document_id: @document.box_view_id,
      duration: 100,
      expiration_date: (Time.now + 100.hours),
      is_downloadable: true)
  end

  private

  def document_params
    params.require(:document).permit(:name, :file)
  end
end
