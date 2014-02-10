require "sinatra"
require "./app"

configure :development do
  require "rack-livereload"
  use Rack::LiveReload
end

map '/assets' do
  public_folder = File.join(App.root, '/public')

  App.sprockets.append_path File.join(App.root, "assets", "stylesheets")
  App.sprockets.append_path File.join(App.root, "assets", "javascripts")
  App.sprockets.append_path File.join(App.root, "assets", "images")
  App.sprockets.append_path File.join(App.root, "bower_components")

  Sprockets::Helpers.configure do |config|
    config.environment = App.sprockets
    config.prefix      = '/assets'
    config.public_path = public_folder
  end

  run App.sprockets
end

map "/" do
  run App
end
