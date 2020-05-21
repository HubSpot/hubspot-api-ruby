class ImportsController < ApplicationController
  before_action :authorize

  def index
  end

  def create
    Services::Hubspot::Imports::Create.new(uploaded_file: params[:file]).call
    redirect_to :imports, notice: 'Import succesfully created.'
  end

  def download_example
    send_file 'public/examples/example.csv', type: 'application/octet-stream', status: 202
  end

  private

  def authorize
    redirect_to login_path and return if session['tokens'].blank?

    session['tokens'] = Services::Authorization::Tokens::Refresh.new(tokens: session['tokens'], request: request).call
    Services::Authorization::AuthorizeHubspot.new(tokens: session['tokens']).call
  end
end
