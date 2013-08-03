require 'spec_helper'

describe Post do
  before(:each) do
  	@post = Post.new(valid_attributes)
    puts @post.errors.messages
  end

  it "should not be valid without a title" do
  	@post.title = ''
  	@post.should_not be_valid
  end

  it "should not be without a user name" do 
  	@post.name = ''
  	@post.should_not be_valid
  end

  it "should not be valid without message" do
  	@post.message = ''
  	@post.should_not be_valid
  end

  def valid_attributes
  	{:name => 'User name', :message => 'Test message',:title => 'test post'}  	
  end
end
