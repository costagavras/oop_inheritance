# Each instance of this class should have its own ever-growing collection of favourite quotes.
# It should have the ability to add a new quote to its collection as well as the ability to select a random quote to share in the local language.

require_relative "multilinguist"

class Quoter < Multilinguist

  def initialize
    super()
    @ar_quoters_quotes = []
  end

  def new_quote(topic)
    ar_quote_bank_random = []
    ar_quote_bank_wisdom = ["wisdom_quote0", "wisdom_quote1", "wisdom_quote2", "wisdom_quote3", "wisdom_quote4", "wisdom_quote5"]
    ar_quote_bank_friendship = ["friendship_quote0", "friendship_quote1", "friendship_quote2", "friendship_quote3", "friendship_quote4", "friendship_quote5"]
    ar_quote_bank_history = ["history_quote0", "history_quote1", "history_quote2", "history_quote3", "history_quote4", "history_quote5"]
    case topic
    when "wisdom" then @ar_quoters_quotes << ar_quote_bank_wisdom.sample
    when "frienship" then @ar_quoters_quotes << ar_quote_bank_friendship.sample
    when "history" then @ar_quoters_quotes << ar_quote_bank_history.sample
    when "random" then
      ar_quote_bank_random = ar_quote_bank_wisdom + ar_quote_bank_friendship + ar_quote_bank_history
      @ar_quoters_quotes << ar_quote_bank_random.sample
    end
  end

  # Stretch
  def say_quote_by_topic(topic)
    k = 0
    case topic
    when "random" then puts self.say_in_local_language "My next random quote is: #{self.all[rand(self.all.count)]}."
    else
      if self.all.index {|quote| quote.include?(topic)}.nil?
        then puts self.say_in_local_language "Sorry, I ran out of quotes on this topic :("
      else k = self.all.index {|quote| quote.include?(topic)}
        puts self.all[k]
      end
    end
  end

  # the method is working but became redundant after stretch exercise implementation of say_quote_by_topic
  # def say_random_quote_in_foreign_language
  #   puts self.say_in_local_language "My next random quote is: #{self.all[rand(self.all.count)]}."
  # end

  def all
    return @ar_quoters_quotes
  end

end

bernard = Quoter.new
bernard.new_quote("wisdom")
bernard.new_quote("frienship")
bernard.new_quote("history")
bernard.new_quote("random")
puts bernard.all.inspect # debugging
bernard.travel_to("France")
bernard.say_quote_by_topic("history")
# bernard.say_random_quote_in_foreign_language
