require 'spec_helper'

RSpec.describe User, type: :model do

  context "before authentification" do
    it "password must be equal repeated " do
      FactoryBot.build(:user,password:"anotherone").should_not be_valid
    end
  end
  it "has a valid factory" do
    FactoryBot.create(:user).should be_valid
  end
  context "user haven't admin panel at start" do
    it "should haven't admin  functional " do
      admin = FactoryBot.build(:user)
      expect(admin.admin).to be_nil
    end
  end
  context "should email be unique" do
    it 'should be unique' do
     user = FactoryBot.create(:user,email:"admin@gmail.com")
     FactoryBot.build(:user,email:"admin@gmail.com").should_not be_valid
    end

  end
  it 'should be create fullname with join' do
    user = FactoryBot.build(:user,first_name:"Te",last_name:"st")
    user.name.should == "Te st"
  end
  describe "filter username by letter" do
      before :each do
      @first = FactoryBot.create(:user,username: "First")
      @sayan = FactoryBot.create(:user,username: "Sayan")
      @steve = FactoryBot.create(:user,username: "Steve")
      @thirt = FactoryBot.create(:user,username: "Thirt")
    end

    context "matching letters" do
     it 'returns array with result on letter S with sorting by username' do
        User.search_by_letter("S").should == [@sayan, @steve]
      end
    end

   context "non-matching letters" do
      it 'should return array without specific result ' do
        User.search_by_letter("S").should_not include @first,@thirt
      end
    end
  end
end
