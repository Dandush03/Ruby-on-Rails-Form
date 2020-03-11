require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:'FacundoIglesias', email:'hello@gmail.com', password:'aAabBb1')
  end

  test 'should create a user' do
    assert @user.save
  end

  test 'username should not be valid' do
  	dummy_usernames = ['', 'blank username should not be valid', 'a'*90, '
  					  long username should not be valid']
  	i = 0
  	while i < 3
  	  @user.username = dummy_usernames[i]
  	  assert_not @user.valid?, dummy_usernames[i+1]
  	  i += 2
  	end
  end

   test 'email should not be created valid' do
  	dummy_emails = ['', 'not an email', ('a@'+('x'*120)+'.com') , 'hola!@test.com', 
  				   'hola@test!.com', 'gih@gmail.123']
  	i = 0
  	while i < 5
  	  @user.email = dummy_emails[i]
  	  assert_not @user.valid?, "#{dummy_emails[i]} should not be valid"
  	  i += 1
  	end
  end

  test 'password should not be valid' do
  	dummy_password = ['','blank password should not be valid', 'a'*5, '
  					  passwords with less than 6 characters should not be
  					  valid', 'asdfghu', 'passwords with all lowercaps should
  					  not be valid', 'ASDEFGH', 'passwords with all caps should
  					  not be valid', 'AAssDDee', 'passwords must contain at least
  					  one digit']
    i = 0
  	while i < dummy_password.size
  	  @user.password = dummy_password[i]
  	  assert_not @user.valid?, dummy_password[i+1]
  	  i += 2
  	end
  end
end
