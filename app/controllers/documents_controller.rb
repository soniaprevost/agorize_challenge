class DocumentsController < ApplicationController

  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
    BoxView::Session.create(
      document_id: @document.box_view_id,
      duration: 100,
      expiration_date: (Time.now + 10.minutes),
      is_downloadable: true)
  end


end
