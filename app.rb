require "bundler"
Bundler.require
include Sprockets::Helpers

class App < Sinatra::Base
  set :sprockets, Sprockets::Environment.new(root)

  get '/' do
    haml :index
  end
end
