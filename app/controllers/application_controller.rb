
class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/recipes' do
      @recipes = Recipe.all
      erb :index
  end

  get '/recipes/new' do
  end

  get '/recipes/:id/edit' do

  end

  get '/recipes/:id' do
      @recipe = Recipe.find(params[:id])
      erb :show
  end

  delete '/recipes/:id' do
      Recipe.delete(params[:id])
      redirect '/recipes'
  end
end
