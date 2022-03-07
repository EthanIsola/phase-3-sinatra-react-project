class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/movies" do
    Movie.all.to_json
  end

  get '/movies/:id' do
    Movie.find(params[:id]).to_json
  end

  post '/movies' do 
    Movie.create(
    title: params[:title],
    release_date: params[:release_date],
    cast: params[:cast],
    director: params[:director],
    producer: params[:producer],
    image_URL: params[:image_URL]
  )
  end


end
