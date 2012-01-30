require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App " # setting a base part of the title
  end

  describe "GET 'home'" do # human description, can be anything
    it "should be successful" do # what goes inside the quote marks is irrelevant
      get 'home' # rspec acts like a browser and 'gets' home
      response.should be_success # return a status of 200? boolean
    end

    it "check for page title" do # same as above, what's inside quotes is irrelevant
      get 'home' # get home page content
      response.should have_selector("title", # have_selector looks for HTML element
        :content => @base_title + "| Home") # with content => "content to check for goes here"
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
        :content => @base_title + "| About")
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
        :content => @base_title + "| Contact")
    end
  end
  
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

    it "check for page title" do
      get 'help'
      response.should have_selector("title",
        :content => @base_title + "| Help")
    end
  end
end
