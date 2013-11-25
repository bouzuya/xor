require_relative '../logic'
require 'minitest/unit'
require 'minitest/autorun'

class LogicTest < MiniTest::Unit::TestCase

  def setup
    @logic = Logic.new
  end

  def test_and
    assert_equal false, @logic.and(false, false)
    assert_equal false, @logic.and(false, true)
    assert_equal false, @logic.and(true, false)
    assert_equal true, @logic.and(true, true)
  end

  def test_or
    assert_equal false, @logic.or(false, false)
    assert_equal true, @logic.or(false, true)
    assert_equal true, @logic.or(true, false)
    assert_equal true, @logic.or(true, true)
  end

  def test_not
    assert_equal true, @logic.not(false)
    assert_equal false, @logic.not(true)
  end
 
  def test_xor
    assert_equal false, @logic.xor(false, false)
    assert_equal true, @logic.xor(false, true)
    assert_equal true, @logic.xor(true, false)
    assert_equal false, @logic.xor(true, true)
  end

end

