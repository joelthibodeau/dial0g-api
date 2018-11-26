require 'rails_helper'

RSpec.describe "Dialogs", type: :request do
  describe "GET /dialogs" do
    it "works! (now write some real specs)" do
      get dialogs_path
      expect(response).to have_http_status(200)
    end
  end
end
