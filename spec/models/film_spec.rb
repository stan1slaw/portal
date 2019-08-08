require 'rails_helper'

RSpec.describe Film, type: :model do
  describe "validation" do
    describe "name" do
      it "must me present" do
        film = described_class.new
        expect(film).to_not be_valid
        film.name = "s"
        expect(film).to_not be_valid
      end
    end
  end
end
