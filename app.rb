require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Hello World"
  end
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    post '/reverse' do
    puts params

    erb :reversed
      end
      erb :friends
  end
end
