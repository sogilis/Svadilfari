task :environment do
  require './app'
end

namespace :assets do
  desc "Compile all the assets"
  task :precompile => :environment do
    # raise "Not implemented yet"
  end

  desc "Remove compiled assets"
  task :clean => :environment do
    # raise "Not implemented yet"
  end
end

script_dir = File.expand_path(File.dirname(__FILE__))

desc 'installs components'
task :install do
  system('bundle install')
  system('npm install -g bower')
  system('bower install')
  system('rm -fr .git')
  system('git init')
end

desc "Pings PING_URL to keep a dyno alive"
task :dyno_ping do
  require "net/http"

  if ENV['PING_URL']
    uri = URI(ENV['PING_URL'])
    Net::HTTP.get_response(uri)
  end
end
