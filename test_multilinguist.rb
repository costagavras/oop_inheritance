require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

  def test_language_in

      new_multilinguist = Multilinguist.new
      actual = new_multilinguist.language_in("France")
      expected = "fr"

      assert_equal(expected, actual)

  end

end
