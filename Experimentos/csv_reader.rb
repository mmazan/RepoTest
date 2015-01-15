require 'csv'
class CsvReader
	def initialize
		@books_in_stock = []
	end
	
	def read_in_csv_data(csv_file_name)
		CSV.foreach(csv_file_name, headers: true) do |row|
			@books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
		end
	end

	def to_s
		puts("The following books are in stock")
		for bookote in @books_in_stock
			puts(bookote.to_s)
		end
	end

	def total_value_in_stock
		@books_in_stock.inject(0.0) {|sum, book| sum + book.shelf_price}

	end

	def number_of_each_isbn
		book_counts = Hash.new(0)
		for book in @books_in_stock
			book_counts[book.isbn] = book_counts[book.isbn] + 1
		end
		book_counts
	end

end