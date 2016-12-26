class Vehicule
  attr_reader :make, :model
  
  def initialize(make, model)
    @make = make
    @model = model
  end
  
  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicule
  def wheels
    4
  end
end

class Motorcycle < Vehicule
  def wheels
    2
  end
end

class Truck < Vehicule
  attr_reader :payload
  
  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end
  
  def wheels
    6
  end
end