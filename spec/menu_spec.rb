require 'menu'
describe Menu do
  subject(:menu){described_class.new}

  describe "#add_dish" do
    it "responds to the add_dish method" do
      expect(menu).to respond_to(:add_dish).with(2).arguments
    end
    context "when adding a new dish" do
      it "adds new dishes to the menu array" do
        menu.add_dish("pasta",7)
        expect(menu.menu).to include({:name => "Pasta", :price => 7})
      end
    end
  end
  describe "#print_menu" do
    context "when printing a menu" do
      it "prints a numbered list of each dish" do
        menu.add_dish("pasta",7)
        expect(menu.print_menu).to eq (["1. Pasta 7"])
      end
    end
  end
end
