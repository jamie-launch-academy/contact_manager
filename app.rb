require 'sinatra'
require 'sinatra/reloader'
require "sinatra/activerecord"

require_relative 'models/contact'

get '/' do
  @contacts = Contact.all
  erb :index
end

get'/contacts/:id' do
  @find_contact = Contact.find(params[:id])
  # @last_name = params[:last_name]

  erb :show
end
