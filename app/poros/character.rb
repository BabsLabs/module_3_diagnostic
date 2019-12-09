class Character
  attr_reader :name, :role, :house, :patronus

  def initialize(character_attributes)
    @name = character_attributes[:name]
    @role = character_attributes[:role]
    @house = character_attributes[:house]
    @patronus = character_attributes[:patronus]
  end
end