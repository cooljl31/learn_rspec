require 'car'

describe Car do
  describe 'attributes' do
    it 'allows reading and write for :make' do
      car = Car.new
      car.make = 'Test'
      expect(car.make).to eq 'Test'
    end

    it 'allows reading and write for :year' do
      car = Car.new
      car.year = 2017
      expect(car.year).to eq 2017
    end

    it 'allows reading and write for :color' do
      car = Car.new
      car.color = 'red'
      expect(car.color).to eq 'red'
    end

    it 'allows reading for :wheels' do
      car = Car.new
      expect(car.wheels).to eq 4
    end
  end

  describe '.colors' do
    it 'returns an array of colors' do
      colors = %w[red black green blue]
      expect(Car.colors).to match_array colors
    end
  end

  describe '#full_name' do
    it 'returns a string in the expect format' do
      @ford = Car.new(make: 'Ford', year: 2017, color: 'red')
      expect(@ford.full_name).to eq '2017 Ford (red)'
    end
    context 'when initialized with no arguments' do
      it 'returns a string using default values' do
        car = Car.new
        expect(car.full_name).to eq '2007 Ford (unknown)'
      end
    end
  end
end
