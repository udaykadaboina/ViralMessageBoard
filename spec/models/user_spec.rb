require 'spec_helper'

describe User do
  before(:each) do
  	@user = FactoryGirl.create(:user, name: "uday2", password: "secret")
    puts @user.errors.messages
  end

  it "should not be valid without a name" do
  	@user.name = ''
  	@user.should_not be_valid
  end

  it "should not be without a user email" do 
  	@user.email = ''
  	@user.should_not be_valid
  end

  it "should not be valid without password" do
  	@user.password = ''
  	@user.should_not be_valid
  end

  def valid_attributes
  	{:name => 'test user', :password => 'password', :email => 'email@xyz.com'}  	
  end
end