require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require './lib/patron'
require 'pry'

class PatronTest < MiniTest::Test

  def test_patron_exists
    bob = Patron.new("Bob", 20)
    assert_instance_of Patron, bob
  end

  def test_patron_name
    bob = Patron.new("Bob", 20)
    assert_equal "Bob", bob.name
  end

  def test_patron_spending_money
    bob = Patron.new("Bob", 20)
    assert_equal 20, bob.spending_money
  end

  def test_patron_interests
    bob = Patron.new("Bob", 20)
    assert_equal [], bob.interests
  end

  def test_patron_has_interests
    bob = Patron.new("Bob", 20)
    bob.add_interest("Dead Sea Scrolls")
    bob.add_interest("Gems and Minerals")

    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], bob.interests
  end

end
