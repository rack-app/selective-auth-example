require 'spec_helper'

RSpec.describe PayloadManipulatorService::Upcase do
  include Rack::App::Test

  describe '/upcase' do
    subject(:response_body) { get('/upcase', payload: payload).body }

    context 'when payload payload is in full downcase' do
      let(:payload) { 'down' }

      it { is_expected.to eq 'DOWN' }
    end

    context 'when payload payload is in mix case' do
      let(:payload) { 'dOwN' }

      it { is_expected.to eq 'DOWN' }
    end

    context 'when payload payload is in upcase case' do
      let(:payload) { 'DOWN' }

      it { is_expected.to eq 'DOWN' }
    end
  end

  describe '/partial endpoint is mounted with protection' do
    subject(:response_status) { get('/partial').status }

    it { is_expected.to eq 401 }
  end
end
