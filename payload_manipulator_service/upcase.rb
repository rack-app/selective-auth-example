require 'rack/app'
class PayloadManipulatorService::Upcase < Rack::App
  require_relative 'upcase/admin'

  mount self::Admin

  get '/upcase' do
    payload.to_s.upcase
  end
end
