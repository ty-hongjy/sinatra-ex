require "rspec"
require "rack/test"
require_relative "simple"

describe "Hello application" do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "Say hello" do
		get "/hello"
		last_response.should be_ok
		last_response.body.should=="hello world"
	end

	it "root" do
		get "/"
		last_response.should be_ok
		last_response.body.should=="this is a simple app"
	end

	it "Say hello1" do
		get "/hello1"
		last_response.should be_ok
		last_response.body.should=="hello world1"
	end
end
