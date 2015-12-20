require_relative 'book'

module Library
  class Library
    attr_reader :name
    attr_reader :books

    def initialize(name, address)
      @name = name.split.map(&:capitalize).join(' ')
      @address = address.split.map(&:capitalize).join(' ')
      @books =[]
    end

    def add_book(book)
      @books << book
    end

    def to_s
      "#{@name} library is located at #{@address}, #{@name}"
    end

    def find_book(book_title)
      return_book = nil
      @books.each do |book|
        if book.name.upcase == book_title.upcase
          return_book = book
        end
      end
      return return_book
    end

    def show_books_in_library
      @books.each do |book|
        puts book.show_book_details
      end
    end

  end #Library
end #Library
