require 'library/library'

module Library

  describe 'Library' do
    before do
      @manly = Library.new('manly', '1 Harbourside Place')
    end

    describe '#new' do
      it 'creates an instance of Library' do
        expect(@manly).to be_an_instance_of Library
      end

      it 'has a capitalized name' do
        expect(@manly.name).to eq('Manly')
      end
    end #new

    describe '#to_s' do
      it 'formats the name and address' do
        expect(@manly.to_s).to eq('Manly library is located at 1 Harbourside Place, Manly')
      end
    end

  end #Library
end #module
