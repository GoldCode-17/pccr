require "rails_helper"

RSpec.describe FramingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/framings").to route_to("framings#index")
    end

    it "routes to #new" do
      expect(get: "/framings/new").to route_to("framings#new")
    end

    it "routes to #show" do
      expect(get: "/framings/1").to route_to("framings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/framings/1/edit").to route_to("framings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/framings").to route_to("framings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/framings/1").to route_to("framings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/framings/1").to route_to("framings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/framings/1").to route_to("framings#destroy", id: "1")
    end
  end
end
