require 'spec_helper'

describe 'Hubspot::Cms::AuditLogs::AuditLogsApi' do
  subject(:api) { Hubspot::Cms::AuditLogs::AuditLogsApi.new }
  
  it { is_expected.to respond_to(:get_page) }

  describe '#get_page' do
    subject(:new_options_auth_names) { api.get_page(params)[:auth_names] }

    let(:params) { { auth_names: 'ouath2' } }
 
    before do
      api.api_client.stub(:call_api) { |method, local_var_path, new_options| [new_options, 200, '']  }
    end

    it { is_expected.to eq params[:auth_names] }

    context 'with hapikey' do
      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end
end
