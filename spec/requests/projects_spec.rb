require 'rails_helper'

RSpec.describe "Projects", type: :request do
  describe "GET /image:string" do
    it "returns http success" do
      get "/projects/image:string"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /title:string" do
    it "returns http success" do
      get "/projects/title:string"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /description:string" do
    it "returns http success" do
      get "/projects/description:string"
      expect(response).to have_http_status(:success)
    end
  end

end
