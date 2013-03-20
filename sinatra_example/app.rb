require '../feature_toggler'
require 'sinatra'
require 'json'

FeatureToggler.configure do
  enable :like_photo
  disable :upload_music
  set_value :feature_mode, "production"
  set_value :cheez, nil
end

get '/feature-toggles' do
  erb :index
end

get '/feature-toggles.json' do
  content_type :json
  { "features" => FeatureToggler.values }.to_json
end
