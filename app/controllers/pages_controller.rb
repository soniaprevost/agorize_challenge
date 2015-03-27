require 'rest_client'
require 'json'

class PagesController < ApplicationController

  def home
    BoxView.api_key = ENV['BOX_VIEW_API_KEY']

    BoxView::Session.create(
      document_id: '3c6bfbe3383d4c369f14cf356bf2a591',
      duration: 100,
      expiration_date: (Time.now + 100.hours),
      is_downloadable: true)
  end

end
