Rails.application.routes.draw do
  get 'school/welcome'

  get 'school/students'

  get 'school/groups'

  get 'school/student'

  get 'school/group'

  root "school#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
