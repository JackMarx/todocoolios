class Pizza
  attr_reader :name, :description, :time_baked

  def initialize(name, description, time_baked=0)
    @name = name
    @description = description
    @time_baked = time_baked
  end
end
