require 'rails_helper'

RSpec.describe FilmsController, type: :controller do
   describe "GET #index" do
     let(:film_first) {FactoryBot.create(:film)}
     let(:film_second) {FactoryBot.create(:film)}
     it "return all films from /index" do
       get :index
       expect(response).to be_successful
     end
     it "render the :index view" do
       get :index
       response.should render_template :index
     end
   end

  describe "GET #show" do
    let(:film_first) {FactoryBot.create(:film)}

    it 'assigns the requested film to @film' do
      get :show, params: {id: film_first}
      expect(response).to be_successful
    end

    it "render the #show view" do
      get :show,params: {id: FactoryBot.create(:film) }
      response.should render_template :show
    end
  end

  describe "GET #new" do
    login_user
    it "Add film with admins rules" do
      get :new
      response.should render_template :new
    end
  end

end

