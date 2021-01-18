require 'spec_helper'

describe 'Hubspot::Crm::Pipelines::PipelineStagesApi' do
  subject(:pipeline_stages_api) { Hubspot::Crm::Pipelines::PipelineStagesApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
  it { is_expected.to respond_to(:get_by_id) }
  it { is_expected.to respond_to(:replace) }
  it { is_expected.to respond_to(:update) }
end
