

require 'bundler/setup'
require 'rack/file'
require 'capybara/rspec'

Capybara.app = Rack::Builder.new do
  map '/' do
    use Rack::Lint
    run JekyllSite.new(File.join(File.dirname(__FILE__), '..', 'site'))
  end
end.to_app

RSpec.configure do |c|
  c.include Capybara::DSL
end


