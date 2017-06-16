require 'rack/app'
class PayloadManipulatorService < Rack::App
  require_relative 'payload_manipulator_service/upcase'

  namespace :v1 do
    mount self::Upcase
  end
end
