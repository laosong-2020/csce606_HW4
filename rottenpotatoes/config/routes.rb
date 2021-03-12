Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  match 'movies/:id/director' ,to: 'movies#director_sames',:as =>  'director_sames'
  root :to => redirect('/movies')
end
