require 'spec_helper'

describe 'Hubspot::Cms::Blogs::Authors::DefaultApi' do
  subject(:default_api) { Hubspot::Cms::Blogs::Authors::DefaultApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:archive_0) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:create_0) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:get_page) }
  it { is_expected.to respond_to(:read) }
  it { is_expected.to respond_to(:update) }
  it { is_expected.to respond_to(:update_0) }

  describe '#archive_with_http_info' do  # #archive returns nil, so there are specs for the #archive_with_http_info instead
    subject(:new_options) { default_api.archive_with_http_info(input_string, params).first }

    let(:params) { { auth_names: 'ouath2' } }
    let(:input_string) { 'test_input_string' }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [new_options, 200, '']  }
    end

    it 'sets auth names from params' do
      expect(new_options[:auth_names]).to eq params[:auth_names]
    end

    it 'sets body from input string' do
      expect(new_options[:body]).to eq input_string
    end

    context 'with hapikey' do
      subject(:new_options_auth_names) { default_api.archive_with_http_info(input_string, params).first[:auth_names] }

      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end

  describe '#archive_0_with_http_info' do  # #archive_0 returns nil, so there are specs for the #archive_with_http_info instead
    subject(:request) { default_api.archive_0_with_http_info(object_id, params).first }

    let(:params) { { auth_names: 'ouath2' } }
    let(:object_id) { 'test_object_id' }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [{ new_options: new_options, path: local_var_path }, 200, '']  }
    end

    it 'sets auth names from params' do
      expect(request[:new_options][:auth_names]).to eq params[:auth_names]
    end

    it 'sets object id to path' do
      expect(request[:path]).to match object_id
    end

    context 'with hapikey' do
      subject(:new_options) { default_api.archive_0_with_http_info(object_id, params).first[:new_options][:auth_names] }

      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end

  describe '#create' do
    subject(:new_options) { default_api.create(blog_author, params) }

    let(:params) { { auth_names: 'ouath2' } }
    let(:blog_author) { 'test_blog_author' }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [new_options, 200, '']  }
    end

    it 'sets auth names from params' do
      expect(new_options[:auth_names]).to eq params[:auth_names]
    end

    it 'sets body from blog author' do
      expect(new_options[:body]).to eq blog_author
    end

    context 'with hapikey' do
      subject(:new_options_auth_names) { default_api.create(blog_author, params)[:auth_names] }

      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end

  describe '#create_0' do
    subject(:new_options) { default_api.create_0(blog_author, params) }

    let(:params) { { auth_names: 'ouath2' } }
    let(:blog_author) { 'test_blog_author' }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [new_options, 200, '']  }
    end

    it 'sets auth names from params' do
      expect(new_options[:auth_names]).to eq params[:auth_names]
    end

    it 'sets body from blog author' do
      expect(new_options[:body]).to eq blog_author
    end

    context 'with hapikey' do
      subject(:new_options_auth_names) { default_api.create_0(blog_author, params)[:auth_names] }

      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end

  describe '#get_by_id' do
    subject(:request) { default_api.get_by_id(object_id, params) }

    let(:params) { { auth_names: 'ouath2' } }
    let(:object_id) { 'test_object_id' }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [{ new_options: new_options, path: local_var_path }, 200, '']  }
    end

    it 'sets auth names from params' do
      expect(request[:new_options][:auth_names]).to eq params[:auth_names]
    end

    it 'sets object id to path' do
      expect(request[:path]).to match object_id
    end

    context 'with hapikey' do
      subject(:new_options) { default_api.get_by_id(object_id, params)[:new_options][:auth_names] }

      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end

  describe '#get_page' do
    subject(:new_options_auth_names) { default_api.get_page(params)[:auth_names] }

    let(:params) { { auth_names: 'ouath2' } }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [new_options, 200, '']  }
    end

    it { is_expected.to eq params[:auth_names] }

    context 'with hapikey' do
      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end

  describe '#read' do
    subject(:new_options) { default_api.read(input_string, params) }

    let(:params) { { auth_names: 'ouath2' } }
    let(:input_string) { 'test_input_string' }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [new_options, 200, '']  }
    end

    it 'sets auth_names from params' do
      expect(new_options[:auth_names]).to eq params[:auth_names]
    end

    it 'sets body from blog author' do
      expect(new_options[:body]).to eq input_string
    end

    context 'with hapikey' do
      subject(:new_options_auth_names) { default_api.read(input_string, params)[:auth_names] }

      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end

  describe '#update' do
    subject(:new_options) { default_api.update(input_json_node, params) }

    let(:params) { { auth_names: 'ouath2' } }
    let(:input_json_node) { 'test_input_json_node' }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [new_options, 200, '']  }
    end

    it 'sets auth_names from params' do
      expect(new_options[:auth_names]).to eq params[:auth_names]
    end

    it 'sets body from input json node' do
      expect(new_options[:body]).to eq input_json_node
    end

    context 'with hapikey' do
      subject(:new_options_auth_names) { default_api.update(input_json_node, params)[:auth_names] }

      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end

  describe '#update_0' do
    subject(:request) { default_api.update_0(object_id, input_json_node, params) }

    let(:params) { { auth_names: 'ouath2' } }
    let(:object_id) { 'test_object_id' }
    let(:input_json_node) { 'test_input_json_node' }
 
    before do
      default_api.api_client.stub(:call_api) { |method, local_var_path, new_options| [{ new_options: new_options, path: local_var_path }, 200, '']  }
    end

    it 'sets auth names from params' do
      expect(request[:new_options][:auth_names]).to eq params[:auth_names]
    end

    it 'sets body from input json node' do
      expect(request[:new_options][:body]).to eq input_json_node
    end

    it 'sets object id to path' do
      expect(request[:path]).to match object_id
    end

    context 'with hapikey' do
      subject(:new_options_auth_names) { default_api.update_0(object_id, input_json_node, params)[:new_options][:auth_names] }

      let(:params) { { auth_names: 'hapikey' } }

      it { is_expected.to eq params[:auth_names] }
    end
  end
end
