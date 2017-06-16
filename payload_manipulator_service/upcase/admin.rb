require 'rack/app'
class PayloadManipulatorService::Upcase::Admin < Rack::App
  require_relative 'admin/partial'

  middlewares do |b|
    b.use Rack::Auth::Basic, 'Restricted Area' do |username, password|
      [username, password] == %w[cat meow]
    end
  end

  mount self::Partial
  # ... and other functionality serving applications

  get { '' }
end
