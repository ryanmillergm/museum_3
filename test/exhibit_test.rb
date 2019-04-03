require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit'
require 'pry'


class ExhibitTest < MiniTest::Test

  def test_exhibit_exists
    exhibit = Exhibit.new("Gems and Minerals", 0)
    assert_instance_of Exhibit, exhibit
  end

  def test_exhibit_name
    exhibit = Exhibit.new("Gems and Minerals", 0)
    assert_equal "Gems and Minerals", exhibit.name
  end

  def test_case_name
    exhibit = Exhibit.new("Gems and Minerals", 0)
    assert_equal 0, exhibit.cost
  end

  
end
