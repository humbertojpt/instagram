require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the a user requires email and password" do
   		user = User.new
   		assert !user.save, "The user was save without email and password"
   
   		#puts "--Errors--"
   		#users.errors.full_messages.each { |msg| puts msg}
   end

   test "the a user have a unique email" do
   		user = User.new
   		user.email users(:one).email

   		assert !user.save, "The user was whit a repeted email"
   end

   test "the a user have a name" do
   		user = User.new
   		user.email = "juan.perez@gmail.com"
   		user.password = "12345678"

   		assert !user.save, "The user was without a name"
   
   		# puts "--Errors--"
   		# post.errors.full_messages.each { |msg| puts msg}
   end
end
