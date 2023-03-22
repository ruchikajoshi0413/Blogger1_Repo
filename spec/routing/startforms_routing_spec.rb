require "rails_helper"

RSpec.describe StartformsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/startforms").to route_to("startforms#index")
    end

    it "routes to #new" do
      expect(get: "/startforms/new").to route_to("startforms#new")
    end

    it "routes to #show" do
      expect(get: "/startforms/1").to route_to("startforms#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/startforms/1/edit").to route_to("startforms#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/startforms").to route_to("startforms#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/startforms/1").to route_to("startforms#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/startforms/1").to route_to("startforms#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/startforms/1").to route_to("startforms#destroy", id: "1")
    end
  end
end
