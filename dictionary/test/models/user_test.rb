#author Quoc Thao
#date 21/05/2014
require 'test_helper'

class UserTest < ActiveSupport::TestCase
    #function test Create User
    def test_create
        assert_difference('User.count',1,"Add False") do
            user = User.new({"user_name"=>'thao', "user_password"=>'123456', "user_email"=>'abc@yahoo.com'})
            user.save
        end
    end

    #function test Deleted User
    def test_deleted
        assert_difference('User.count', -1 , "Delete False") do
            user = User.find(980190962);
            user.delete
        end
    end

    #function test Update User
    def test_edited
        user = User.find(980190962);
        user.update({"user_name" => 'abasd',"user_password" => '456789', "user_email"=>'abc@yahoo.com'})
        if assert_not_nil('user_name', nil)
            arrert false
        elsif assert_not_nil('user_password', nil)
            assert false
        elsif assert_not_nil('user_email', nil)
            arrert false
        else
            assert true
        end
    end

    #function test auth user
    def test_auth_use_available
        user = User.authenticate('MyString');
        if(user)
            assert true
        else
            assert false, 'find user false'
        end
    end

    #function test auth user
    def test_auth_use_not_available
        user = User.authenticate('My');
        assert_equal nil, user, 'find user not_available false'
    end
end
