
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
        expect(pizza.time)_baked.to eq(10)
      end
    end

  end
