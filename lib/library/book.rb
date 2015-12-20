module Library
  class Book
    attr_reader :name
    attr_reader :status

    def initialize(name, author, isbn)
      @name = name.split.map(&:capitalize).join(' ')
      @author = author.split.map(&:capitalize).join(' ')
      @isbn = isbn
      @status = true
    end

    def show_book_details
      have_it = @status ? "available" : "not available"
      "#{@name} (ISBN: #{@isbn}) by #{@author} - (#{have_it})"
    end

    def checkout
      @status = false
    end

  end
end
