class Application < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/greet' do
    erb :greet
  end
  
  post '/greet' do
    erb :greet
  end
end