require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Our offer to you'" do
      visit '/static_pages/home'
      page.should have_content("Our offer to you:")
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Glamfu: A Glamorous Look for You | Home")
    end

  end
end
