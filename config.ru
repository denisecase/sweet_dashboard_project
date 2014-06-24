require 'dashing'
require 'yaml'
require 'bundler'

Bundler.require


configure do
  set :auth_token, ENV['access_token']
  set :consumer_key, ENV['consumer_key']
  set :consumer_secret, ENV['consumer_secret']
  set :access_token, ENV['access_token']
  set :access_token_secret, ENV['access_token_secret']

  helpers do
    def protected!
     # Put any authentication code you want in here.
     # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application