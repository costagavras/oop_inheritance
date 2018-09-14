# Instances of this class should be able to accept a list of numbers and return a sentence stating the sum of the numbers.

require_relative "multilinguist"

arr_numlist = [345,240, 456, 9873, 2837]

class Polymath < Multilinguist

  def initialize
    super()
  end

  def sum_all(arr)
    puts self.say_in_local_language("The total is #{arr.sum}")
  end


end

bernard = Polymath.new

bernard.sum_all(arr_numlist)
bernard.travel_to("France")
bernard.sum_all(arr_numlist)
