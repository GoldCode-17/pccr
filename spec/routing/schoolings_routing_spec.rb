require "rails_helper"

RSpec.describe SchoolingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/schoolings").to route_to("schoolings#index")
    end

    it "routes to #new" do
      expect(get: "/schoolings/new").to route_to("schoolings#new")
    end

    it "routes to #show" do
      expect(get: "/schoolings/1").to route_to("schoolings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/schoolings/1/edit").to route_to("schoolings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/schoolings").to route_to("schoolings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/schoolings/1").to route_to("schoolings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/schoolings/1").to route_to("schoolings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/schoolings/1").to route_to("schoolings#destroy", id: "1")
    end
  end
end
