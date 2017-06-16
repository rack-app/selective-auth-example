require 'rack/app'
class PayloadManipulatorService::Upcase::Admin::Partial < Rack::App
  get '/partial' do
    length = 0

    length = params['length'].to_i if params['length']

    raw_payload = payload.to_s

    raw_payload[0...length].to_s.upcase + raw_payload[length..-1].to_s
  end
end
