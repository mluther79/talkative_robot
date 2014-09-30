class Mammals
  def initialize
  	@hair = true
  	@live_birth = true	

  def has_hair?
  	@hair
  end	
end

class Person < Mammals 
  def initialize
  	super	
	@legs = 2
  end
end

class Dog < Mammals
  def initialize
  	super
	@legs = 4
	@live_birth = false
  end		

  def live_birth?
	@live_birth
  end
end
