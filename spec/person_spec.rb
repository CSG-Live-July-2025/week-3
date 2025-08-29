require_relative '../person'

RSpec.describe Person do
  describe '#initialize' do
    it 'creates a new person with a name and an age' do
      person = Person.new("Lanna", 23)
      expect(person.name).to eq("Lanna")
      expect(person.age).to eq(23)
    end
  end

  describe '#introduce' do
    it 'returns a greeting with their name and age' do
      person = Person.new("Ron", 26)
      expect(person.introduce).to eq("Hafa Adai, my name is Ron and I'm 26 years old.")
    end
  end
end
