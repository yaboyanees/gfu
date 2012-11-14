require 'spec_helper'

describe "UserPreference" do

  describe "creating" do

    it "should create a user preferences with the given params" do
      up = UserPreference.new(:address => "nancy@yahoo.com",
                               :skin_tone => "light",
                               :undertone => "warm",
                               :hair_color => "brown")
      up.save!
      UserPreference.count.should == 1

      up.should respond_to(:id)
    end

    after :each do
      UserPreference.destroy_all
      UserPreference.count.should == 0
    end

  end

  describe "querying" do

    before :each do
      up1 = UserPreference.new(:address => "nate@natereed.com",
                                :skin_tone => "fair",
                                :undertone => "cool",
                                :hair_color => "blond")
      up1.save!

      up2 = UserPreference.new(:address => "donna@gmail.com",
                                :skin_tone => "dark",
                                :undertone => "warm",
                                :hair_color => "black")
      up2.save!

      UserPreference.count.should == 2
    end

    it "should find all the users who have fair skin" do
      UserPreference.count.should == 2
      UserPreference = UserPreference.where(:skin_tone => 'fair')
      UserPreference.count.should == 1
    end

    it "should find all the users who have cool undertone" do
      UserPreference = UserPreference.where(:undertone => "cool")
      UserPreference.count.should == 1
    end

    it "should find all the users who have blond hair" do
      UserPreference = UserPreference.where(:hair_color => "blond")
      UserPreference.count.should == 1
    end

    it "should find the preferences for the given address" do
      UserPreference = UserPreference.where(:address => "donna@gmail.com")
      UserPreference.count.should == 1
    end

    after(:each) do
      UserPreference.destroy_all
      UserPreference.count.should == 0
    end

  end

end