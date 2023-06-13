class User
  @@name = 'user'
  @name

  def initialize(name)
    @name = name
  end

  def self.name
    @@name
  end

  def self.setName=(value)
    @@name = value
  end

  def setName=(value)
    @name = value
  end

  def getName
    @name
  end
end
