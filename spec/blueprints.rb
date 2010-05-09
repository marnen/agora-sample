require 'machinist/active_record'
require 'sham'
require 'faker'

Contact.blueprint do
  first_name
  last_name
  address
  phone
  email
end

[:first_name, :last_name].each do |f|
  Sham.send(f) { Faker::Name.send(f) }
end

Sham.address do
  "#{Faker::Address.street_address(rand(2) == 0)}\n#{[Faker::Address.city, Faker::Address.us_state_abbr, Faker::Address.zip_code].join ' '}"
end

Sham.phone { Faker::PhoneNumber.phone_number }

Sham.email { Faker::Internet.email }