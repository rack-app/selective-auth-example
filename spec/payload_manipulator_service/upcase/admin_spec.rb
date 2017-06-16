require 'spec_helper'

RSpec.describe PayloadManipulatorService::Upcase::Admin do
  include Rack::App::Test

  describe 'authentication' do
    subject(:response_body) { get('/', headers: headers).status }

    context 'when the required credentials providen' do
      # hard coded bad password, only for the example purpose
      let(:headers) { { 'Authorization' => 'Basic Y2F0Om1lb3c=' } }

      it { is_expected.to eq 200 }
    end

    context 'when unauthorized person try to access the protected application' do
      let(:headers) { {} }

      it { is_expected.to eq 401 }
    end
  end
end
