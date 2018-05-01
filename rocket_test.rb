require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
  	@rocket = Rocket.new(name: "Powerful North Korean Rocket")
  	@random_rocket = Rocket.new
  end 

  def test_name_reader
  	expected_value = "Powerful North Korean Rocket"
  	actual_value = @rocket.name 
  	assert_equal(expected_value, actual_value)
  end 

  def test_name_writer
  	expected_value = "Broken North Korean Rocket"
  	actual_value = @rocket.name=("Broken North Korean Rocket")
  	assert_equal(expected_value, actual_value)
  end

  def test_color_reader
  	
  end 
end
