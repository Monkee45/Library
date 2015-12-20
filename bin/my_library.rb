require_relative '../lib/library/library'
require_relative '../lib/library/book'
require 'CSV'

all_books = CSV.read('.\books.csv')

municipality = []
location = 0
libraries = []
all_books.each do |book|
  libraries << book.first(2)
end

libraries.uniq!.each do |libr|
  municipality[location] = Library::Library.new(libr[0], libr[1])
  location += 1
end

municipality.each do |loc|
  puts loc.to_s
end

all_books.each do |book|
  municipality.each do |library|
    if book[0].capitalize == library.name
      library.add_book(Library::Book.new(book[2],book[3], book[4]))
    end
  end
end

municipality.each do |library|
  puts "\nBooks located at #{library.name} are:"
  library.show_books_in_library
end

puts "Book Search.  Enter Book Name or ISBN):"
book_search = gets.chomp


go_to_library = nil
go_to_book = nil
puts "\nSearching Libraries......"
municipality.each do |a_library|
  go_to_book = a_library.find_book(book_search)
  go_to_library = a_library
  if go_to_book != nil
    break
  end
end

if go_to_book != nil
  puts go_to_library.to_s
  puts go_to_book.show_book_details
else
  puts "Can't find that book.  Try elsewhere or come back next month"
end

if go_to_book !=nil
  puts "Do you want to borrow it?"
  answer = gets.chomp
  if answer == 'y'
    go_to_book.checkout
  end
end

municipality.each do |library|
  puts "\nBooks located at #{library.name} are:"
  library.show_books_in_library
end
