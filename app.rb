ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require './lib/link'

class BookmarkManager < Sinatra::Base
  get '/links/new' do
    erb(:new)
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb(:index)
  end
  run! if app_file== $0
end
