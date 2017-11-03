class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  post '/recipes' do
    # recipes = Recipe.all
    # recipes
    params[:ingredients]
  end
end
