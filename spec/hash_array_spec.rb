require './lib/hash_array.rb'

describe "hash_array" do
  describe "#sorting" do
    test_data = [7, 9, 5,1]
    subject { sorting(test_data) }
    it 'sorting array' do

      expect(subject).to eq([1, 5, 7, 9])

    end
  end


  describe "#array_to_sentence" do
    test_data = [{ name: 'Jack', age: 21 }, { name: 'Jill', age: 47 }]
    subject { details(test_data) }
    it 'return element to sentence' do

      expect(subject).to eq(["my name is Jack, I am 21 years old", "my name is Jill, I am 47 years old"])

    end
  end

  describe "#players_brand" do
    test_data = [{ name: 'Zlatan', brand: 'nike'}, { name: 'Walcott', brand: 'ADIDAS'},
                 { name: 'Roberts', brand: 'nike'}, { name: 'Hamilton', brand: 'puma'},
                 { name: 'Rossi', brand: 'adidas'}, { name: 'Muller', brand: 'nike'},
                 { name: 'Schwans', brand: 'PUMA'}, { name: 'Miller', brand: 'UMBRO'}]
    subject { brand(test_data) }
    it 'nike and adidas only' do

      expect(subject).to eq({ nike: ['Zlatan','Roberts', 'Muller'], adidas: ['Walcott', 'Rossi'] })

    end
  end
end

# desribe ""
