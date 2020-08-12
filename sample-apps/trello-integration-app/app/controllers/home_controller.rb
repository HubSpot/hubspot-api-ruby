class HomeController < ApplicationController
  before_action :authorize

  def index
    @data_fetch_url = url_for(controller: 'trello/cards', action: :index, only_path: false, protocol: 'https')
    @base_url = url_for(controller: :home, action: :index, only_path: false, protocol: 'https')
    @card_id = ExtensionCard.find_by(card_id_key: ExtensionCard::CARD_ID_KEY)&.card_id
    @card_title = ExtensionCard::CARD_TITLE
  end

  def create_card
    Services::Hubspot::ExtensionsCards::Create.new(request: request).call

    redirect_to action: :success
  end

  def success
    @extension_card = ExtensionCard.find_by(card_id_key: ExtensionCard::CARD_ID_KEY)
  end
end
