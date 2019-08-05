module ControllerMacros
  def login_user
    before :each do
      @user = FactoryBot.create :user
      @user.confirm
      sign_in @user
    end
  end
end