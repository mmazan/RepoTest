class BookInStock
attr_reader(:isbn)
attr_reader(:discount)
def initialize(isbn, price)
@isbn = isbn
@price = Float(price)
@discount = 1.0
end
def shelf_price
@price * @discount
end
def shelf_price=(price)
@discount = price/@price
end
def to_s
"ISBN: #{@isbn}, price: $ #{@price}, discount: $ #{@discount}"
end
end
