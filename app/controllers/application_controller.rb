class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/recipes' do
    
  end
  
  post '/recipes' do
    @recipes = Recipe.all
    
    #params[:cook_time]
  end
end
