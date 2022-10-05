FactoryBot.define do
  sequence :string, aliases: [:first_name, :last_name, :password, :name, :description, :state, :avatar] do |n|
    "string#{n}"
  end

  sequence :email do |n|
   "some_man#{n}@gmail.com"
  end
end