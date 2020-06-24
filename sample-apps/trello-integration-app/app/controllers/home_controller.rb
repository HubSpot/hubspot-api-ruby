class HomeController < ApplicationController
  before_action :authorize

  def index
    @data_fetch_url = url_for(controller: 'trello/cards', action: :index, only_path: false, protocol: 'https')
    @base_url = url_for(controller: :home, action: :index, only_path: false, protocol: 'https')
  end
end
