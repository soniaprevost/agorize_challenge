require 'rest_client'
require 'json'

class PagesController < ApplicationController

  def home
    BoxView::Session.create(
      document_id: Document.last.box_view_id,
      duration: 100,
      expiration_date: (Time.now + 10.minutes),
      is_downloadable: true)
  end

end
