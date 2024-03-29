FactoryGirl.define do
  sequence :email do |n|
     "person#{n}@example.com"
   end
 end


FactoryGirl.define do

  factory :user do
    email
    password "anything"
  end

  factory :project do
    user
    name "Cloud Factory"
    description "workers in the cloud"
  end



  factory :task do
    project
    name "task 1"
    status "In Progress"
    user
  end
end

