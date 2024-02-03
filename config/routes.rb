Rails.application.routes.draw do
  resources :fixed_expenses
  resources :variable_expenses
  resources :incomes
  resources :users
end
