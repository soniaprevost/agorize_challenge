class DocumentsController < ApplicationController

  def create
    BoxView.api_key = "rqe276misw58yqwopzrc8qf38sdhwio8"

    BoxView::Document.create({
      url: 'http://www.sraticongres.ro/download-files/uPoGPpb.ppt',
      name: 'How to create a Ppt',
      })

    documentid = BoxView.document_id

    BoxView::Session.create({
      document_id: documentid,
      duration: 100,
      expiration_date: (Time.now + 100.minutes),
      is_downloadable: true
      })

    url = BoxView::Session.viewer_url
  end


end
