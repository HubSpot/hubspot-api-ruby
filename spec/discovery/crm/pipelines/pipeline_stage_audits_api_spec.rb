require 'spec_helper'

describe 'Hubspot::Discovery::Crm::Pipelines::PipelineStageAuditsApi' do
  subject(:api) { Hubspot::Client.new(access_token: 'test').crm.pipelines.pipeline_stage_audits_api }
  
  it { is_expected.to respond_to(:get_audit) }

end
