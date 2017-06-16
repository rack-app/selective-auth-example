require 'spec_helper'
RSpec.describe PayloadManipulatorService::Upcase::Admin::Partial do
  include Rack::App::Test

  describe '/partial' do
    subject(:response_body) { get('/partial', params: params, payload: payload).body }

    context 'when payload is given' do
      let(:payload) { 'down' }

      context 'and params define the length to how many character should be upcased' do
        let(:params) { { length: 2 } }

        it { is_expected.to eq 'DOwn' }
      end

      context 'and params not define the length' do
        let(:params) { {} }

        it { is_expected.to eq 'down' }
      end
    end
  end
end
