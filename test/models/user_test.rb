require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username:'FacundoIglesias', email:'test@test.com', password:'12345')
  end

  test 'should create a user' do
    assert @user.save
  end

end
