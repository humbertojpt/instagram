require 'test_helper'

class PostTest < ActiveSupport::TestCase
   test "the a post requires content" do
   		post = Post.new
   		assert !post.save, "The post was save without content"
   
   		# puts "--Errors--"
   		# post.errors.full_messages.each { |msg| puts msg}
   end
   test "that a post's content is at least 6 letters" do
	   	post = Post.new
	   	post.content = "short"

	   	assert !post.save, "The post's content was saved without 6 letters"
   end

   test "that a post has a user id" do
	   	post = Post.new
	   	post.content = "Hello word"

	   	assert !post.save, "The post's content was saved without user id"
   end
end
