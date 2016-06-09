require 'sinatra'

set :port, 4567

get '/' do
   "<h1>Tacta Contact Manager</h1>"
end

require './contacts_file'

get '/contacts/:i' do
   @i = params[:i].to_i
   contacts = read_contacts
   @contact = contacts[@i]
   erb :'contacts/show'
end
