require_relative 'pizza'

  describe Pizza do
    let (:pizza) {Pizza.new(name: "sausage", description: "delicious", time_baked: 10)}
    let (:pizza2) {Pizza.new(name: "sausage", description: "delicious")}
    let (:pepper){Topping.new}
    let (:onion){Topping.new}
    let (:pizza3) {Pizza.new(name: "veggie-delight", description: "delicious", toppings: [pepper, onion])}

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

      it "expects bake time to equal 0" do
        expect(pizza2.time_baked).to eq(0)
      end

      it "should have many toppings" do
        expect(pizza3.toppings).to eq([pepper, onion])
      end
    end

  end
