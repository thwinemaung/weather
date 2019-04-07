Rails.application.routes.draw do
  root 'forecasts#show'
  get 'forecasts/delivery'
  get 'forecasts/more_weather'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
