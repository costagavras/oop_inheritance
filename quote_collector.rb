# Each instance of this class should have its own ever-growing collection of favourite quotes.
# It should have the ability to add a new quote to its collection as well as the ability to select a random quote to share in the local language.

require_relative "multilinguist"

class Quoter < Multilinguist




  def initialize
    super()
    @ar_quoters_quotes = []
    @quote_counter = 0
  end

  def new_quote
    ar_quote_bank = ["quote0", "quote1", "quote2", "quote3", "quote4", "quote5", "quote6", "quote7"]
    @ar_quoters_quotes << ar_quote_bank[@quote_counter]
    @quote_counter +=1
  end

  def say_random_quote_in_foreign_language
      puts self.say_in_local_language ("My next random quote is: #{self.all[rand(self.all.count)]}.")
  end

  def all
    return @ar_quoters_quotes
  end



end

bernard = Quoter.new
bernard.new_quote
bernard.new_quote
bernard.new_quote
puts bernard.all.inspect
bernard.travel_to("France")
bernard.say_random_quote_in_foreign_language
