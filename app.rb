require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  # post '/new' do
  #   @puppy = Puppy.create(params)
  #   @name = params["name"]
  #   @breed = params["breed"]
  #   @months_old = params["age"]
  #   redirect '/puppy'
  # end

  post '/puppy' do
    # @puppy = Puppy.new(params)
    @name = params["name"]
    @breed = params["breed"]
    @age = params["age"]
    erb :display_puppy
  end


end
