Rails.application.routes.draw do
  get 'homes/Registration' => 'homes#Registration'
  get 'homes/Registration_Ques'
  get 'homes/Registration_PDF'

  root 'homes#Registration' 

  post 'users' => 'users#create'
  post 'business_informations' => 'business_informations#create'
  post 'downloads' => 'downloads#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
