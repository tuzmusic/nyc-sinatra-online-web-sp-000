class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures' do
    # create figure
    figure = Figure.new(params[:figure])
    binding.pry
    # add titles to figure, create if necessary
    
    # add landmarks to figure, create if necessary
  end

end
