class FiguresController < ApplicationController

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures' do
    # create figure
    figure = Figure.new(params[:figure])
    # add titles to figure, create if necessary
    figure.titles << Title.create(name: params[:title][:name]) unless params[:title][:name].empty?
    # add landmarks to figure, create if necessary
    figure.landmarks << Landmark.create(name: params[:landmark][:name]) unless params[:landmark][:name].empty?
    figure.save
  end

end
