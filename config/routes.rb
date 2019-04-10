Rails.application.routes.draw do
  root 'forecasts#show'
  get 'forecasts/delivery'
  get 'forecasts/more_weather'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get 'show', to: '/api/v1/forecasts#show_weather'
  end
end
end