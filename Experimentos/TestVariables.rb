class Customer
   @@no_of_customers=0
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end

   def CambiaCustomers=(cant)
   		@@no_of_customers = cant
   end

   def to_s
   		puts "Total number of customers #{@@no_of_customers} "
   		puts "Customer name #{@cust_name} "
   	end
end