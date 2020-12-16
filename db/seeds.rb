def calFactor time
  case time
    when "05:00","06:00","07:00","08:00","09:00",
      "10:00","11:00","12:00","13:00","14:00",
      "15:00","16:00"
      return 2
    when "17:00","18:00","19:00"
      return 3
    else
      return 4
  end
end

# Create user admin
User.create!(username: "Thanh Long",
  email:"thanhlongdn.it@gmail.com",
  phone: Faker::Number.leading_zero_number(digits: 10),
  role: 1)

#Create user
30.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  phone = Faker::Number.leading_zero_number(digits: 10)
  User.create!(username: name,
  email: email,
  phone: phone)
end

#Create Location
20.times do |n|
  name = Faker::Name.name
  phone= Faker::Number.leading_zero_number(digits: 10)
  address = Faker::Address.full_address
  description = Faker::Lorem.sentence(word_count: 20)
  Location.create!(name:name,
  phone:phone,
  address:address,
  description:description)
end

#Create Yard
60.times do |n|
  type=[5,7,11].sample.to_i
  code = type.to_s+["A","B","C","D","E","G"].sample
  Yard.create!(
  location_id: Location.pluck(:id).sample,
  code: code,
  type_yard: type)
end

# Create time_cost
1.times do |n|
  times = ["05:00","06:00","07:00","08:00","09:00",
          "10:00","11:00","12:00","13:00","14:00",
          "15:00","16:00","17:00","18:00","19:00",
          "20:00","21:00","22:00","23:00"]
  cost = 80000
  ids=Yard.limit(20).pluck(:id)
  ids.each do |id|
    times.each do |time|
      TimeCost.create!(
        yard_id: id,
        time: time,
        cost: cost*calFactor(time))
    end
  end
end

#Create booking
1.times do |n|
  users = User.limit(10).pluck(:id)
  users.each do |id|
    status = [0,1,2,3].sample
    Booking.create!(
      time_cost_id: TimeCost.pluck(:id).sample,
      user_id: id,
      status: status,
      booking_date: Faker::Date.between(from: '2020-10-23', to: '2020-12-01')
    )
  end
end
