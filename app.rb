# myapp.rb
require 'sinatra'
# require 'sinatra/reloader' if development?
require 'pry'
require 'pg'

# db setup
before do
  @db = PG.connect(dbname: 'piratefi', host: 'localhost')
end

after do
  @db.close
end

#Home
get '/' do
  sql = 'SELECT * FROM connections'
  erb :index
end
