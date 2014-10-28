require_relative 'pizza'

  describe Pizza do
    let (:pizza) {Pizza.new("sausage", "delicious", 10)}

    context "#initialize" do
      it "creates a pizza with a name" do
        expect(pizza.name).to eq("sausage")
      end

      it "creates a pizza with a description" do
        expect(pizza.description).to eq("delicious")
      end

      it "creates a pizza with a bake time" do
        expect(pizza.time_baked).to eq(10)
      end

    let (:pizza2) {Pizza.new("sausage", "delicious")}

      it "expects bake time to equal 0" do
        expect(pizza2.time_baked).to eq(0)
    end
  end

end
