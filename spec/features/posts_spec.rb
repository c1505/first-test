require 'rails_helper'

RSpec.feature "Posts", type: :feature do
  describe "posts page" do 
    it "has the correct heading" do
      visit '/posts'
      expect(page).to have_content("Listing Posts")
    end

    it "can create posts" do
      visit '/posts/new'
      fill_in("post_title", :with => "i am a title")
      fill_in("post_body", :with => "i am a body")
      click_button("Create Post")
      expect(page).to have_content("i am a title")
      expect(page).to have_content("i am a body")
      expect(page).to have_content("Post was successfully created.")
    end


  end

end


# it "signs me in" do
#     visit '/sessions/new'
#     within("#session") do
#       fill_in 'Email', :with => 'user@example.com'
#       fill_in 'Password', :with => 'password'
#     end
#     click_button 'Sign in'
#     expect(page).to have_content 'Success'
#   end