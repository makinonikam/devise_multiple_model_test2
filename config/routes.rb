Rails.application.routes.draw do
  devise_for :workers, controllers: {
    sessions:      'workers/sessions',
    passwords:     'workers/passwords',
    registrations: 'workers/registrations'
  }

  devise_for :managements, controllers: {
  sessions:      'managements/sessions',
  passwords:     'managements/passwords',
  registrations: 'managements/registrations'
}

  get root to: 'tops#toppage'
  get 'tops/management' => 'tops#management_index'
  get 'tops/worker' => 'tops#workers_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
