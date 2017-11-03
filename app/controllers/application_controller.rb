class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  get '/recipes' do
    new_recipe = Recipe.create(params)
    #new_recipe.save
    @recipes = Recipe.all
    erb :index
    #params[:cook_time]
  end

  post '/recipes' do
    new_recipe = Recipe.create(params)
    erb :index
    #params[:cook_time]
  end

  get 'recipes/:id' do
    Recipe.find_by_id(params[:id])
    erb :show
  end

  get 'recipes/:id/edit' do
    #this is where the logic happens
  end

  get 'recipes/:id/delete' do

  end
end
