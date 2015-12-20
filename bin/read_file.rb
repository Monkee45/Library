require 'CSV'

libraries = []
all_books = CSV.read('.\books.csv')
all_books.each do |book|
  libraries << book.first(2)
end

puts libraries.uniq
