class Pizza
  attr_reader :name, :description, :time

  def initialize(name, description, time_baked)
    @name = name
    @description = description
    @time_baked = time_baked
  end
end
