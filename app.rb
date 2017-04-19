require('sinatra')
require('sinatra/reloader')
require('./lib/leetspeak')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/show') do
  @words = params.fetch('words').leetspeak()
  erb(:show)
end
