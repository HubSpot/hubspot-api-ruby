class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[manage]

  def index
    @contact_list = if params[:search].present?
      @search_q = params[:search]
      Services::Hubspot::Contacts::Search.new(email: @search_q).call
    else
      Services::Hubspot::Contacts::GetAll.new(limit: 100).call.sort_by(&:created_at).reverse
    end
    @associated_contacts = Services::Hubspot::Associations::GetById.new(params[:company_id]).call || []
  end

  def manage
    selected_ids = contacts_ids_params.select { |id, value| value == '1' }.keys
    if params[:commit] == 'Add'
      Services::Hubspot::Associations::Create.new(params[:company_id], selected_ids).call
    elsif params[:commit] == 'Delete'
      Services::Hubspot::Associations::Delete.new(params[:company_id], selected_ids).call
    end

    redirect_to company_path(params[:company_id])
  end

  def contacts_ids_params
    params.require(:contacts_ids).permit!.to_hash
  end
end