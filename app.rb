# myapp.rb
require 'sinatra'
require 'open-uri'

set :port, 80

get '/nyaa/:query' do
  url = URI.parse("http://www.nyaa.se/?page=rss&term=%s" % params[query])
  url.read
end