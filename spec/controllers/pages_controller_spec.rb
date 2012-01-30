require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do # human description, can be anything
    it "should be successful" do # what goes inside the quote marks is irrelevant
      get 'home' # rspec acts like a browser and 'gets' home
      response.should be_success # return a status of 200? boolean
    end

    it "check for page title" do
      get 'home'
      response.should have_selector("title",
        :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "check for page title" do
      get 'about'
      response.should have_selector("title",
        :content => "Ruby on Rails Tutorial Sample App | About")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "check for page title" do
      get 'contact'
      response.should have_selector("title",
        :content => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end
