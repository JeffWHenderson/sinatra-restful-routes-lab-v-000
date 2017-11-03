class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/recipes' do
    erb :show
  end

  post '/recipes' do
    new_recipe = Recipe.create(params)
    #new_recipe.save
    @recipes = Recipe.all
    erb :show
    #params[:cook_time]
  end

  get 'recipes/:id/show' do
    Recipe.find(:id => params[:id])
  end
end
