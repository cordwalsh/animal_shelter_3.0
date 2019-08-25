
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_pets
  end

  def generate_pets
    20.times do |i|
      pet = Pet.create!(
        name: Faker::Name.name,
        type_of_animal: Faker::Creature::Animal.name,
        sex: Faker::Creature::Dog.gender,
        age: rand(1..15)
      )
      puts "Pet #{i}: name is #{pet.name} and type is #{pet.type_of_animal} and sex is #{pet.sex} and age is #{pet.age}."
    end
  end
end

Seed.begin
