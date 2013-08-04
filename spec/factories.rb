FactoryGirl.define do
	factory :user do
		name "uday"
		password "hellopassword"
		email  { "#{name}@xyz.com"}
	end
end