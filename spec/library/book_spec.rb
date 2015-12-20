require 'library/book'

module Library
  describe 'Book' do
    before do
      @alamo = Book.new('alamo','john b. higgins','12345.111.1')
    end

    describe '#new' do
      it 'creates an object of class Book' do
        expect(@alamo).to be_an_instance_of Book
      end

      it 'has a capitalized name' do
        expect(@alamo.name).to eq('Alamo')
      end

      it 'has a status of checked-in' do
        expect(@alamo.status).to be true
      end
    end #new

    describe '#show_book_details' do
      it 'formats the book output' do
        expect(@alamo.show_book_details).to eq('Alamo (ISBN: 12345.111.1) by John B. Higgins - (available)')
      end
    end

  end #Book
end #module
