=begin 
1. Build a class with instance methods.
2. Call instance methods inside of other instance methods.
3. Use instance methods to track information pertinent to an instance of a class.
=end
require 'pry'

# cash Register
class Register

    attr_accessor :items, :discount, :total, :last_transaction

    # add items of varying quantities and prices * Calcutate discounts 
    def initialize(discount=0)
        @items, @discount, @total = [], discount, 0
    end    

    # title, amount, quaintity
    def add_item(t,a,q=1)
        self.total = a*q
        # counts the quaintity and runs until its over
        q.times {items << t}
        # push last transaction 
        self.last_transaction = a*q
    end

    # discount
    def add_discount
        if !0 ? self.total = total * ((100.0 / discount) * 100).to_i : nil
    end

    def last_transaction
        # minus from last_transactions
        self.total = total - self.last_transaction
    end    
end


nick = Register.new()



binding.pry
0