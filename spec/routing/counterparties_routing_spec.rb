require "rails_helper"

RSpec.describe CounterpartiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/counterparties").to route_to("counterparties#index")
    end

    it "routes to #new" do
      expect(get: "/counterparties/new").to route_to("counterparties#new")
    end

    it "routes to #show" do
      expect(get: "/counterparties/1").to route_to("counterparties#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/counterparties/1/edit").to route_to("counterparties#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/counterparties").to route_to("counterparties#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/counterparties/1").to route_to("counterparties#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/counterparties/1").to route_to("counterparties#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/counterparties/1").to route_to("counterparties#destroy", id: "1")
    end
  end
end
