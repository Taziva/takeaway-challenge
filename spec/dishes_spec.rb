require 'dish'

describe Dish do
  subject(:dish){described_class.new("Pasta",7)}
  describe "New Instance" do
    context "when creating a new dish" do
      it "creates a new dish object" do
        expect(dish).to be_an_instance_of(Dish)
      end
      it "has a name" do
        expect(dish.name).to eq("Pasta")
      end
      it "has a price" do
        expect(dish.price).to eq 7
      end
    end
  end
end
