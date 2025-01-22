# frozen_string_literal: true

require "rails_helper"

RSpec.describe(PraguesController, type: :routing) do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pragues").to(route_to("pragues#index"))
    end

    it "routes to #new" do
      expect(get: "/pragues/new").to(route_to("pragues#new"))
    end

    it "routes to #show" do
      expect(get: "/pragues/1").to(route_to("pragues#show", id: "1"))
    end

    it "routes to #edit" do
      expect(get: "/pragues/1/edit").to(route_to("pragues#edit", id: "1"))
    end


    it "routes to #create" do
      expect(post: "/pragues").to(route_to("pragues#create"))
    end

    it "routes to #update via PUT" do
      expect(put: "/pragues/1").to(route_to("pragues#update", id: "1"))
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pragues/1").to(route_to("pragues#update", id: "1"))
    end

    it "routes to #destroy" do
      expect(delete: "/pragues/1").to(route_to("pragues#destroy", id: "1"))
    end
  end
end
