module ControllerMacros
  def login_user
    before :each do
      @user = FactoryBot.create :user
      @user.confirm
      sign_in @user
    end
  end

  def login_admin
    before :each do
      @user = FactoryBot.create(:user,admin: true)
      @user.confirm
      sign_in @user
    end
  end

  def not_found(*actions)
    actions.each do |a|
      it "#{a} renders 404 page when item was not found" do
        process a,params: {id: 0}
        response.status.should == 404
      end
    end
  end


end