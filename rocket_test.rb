require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
  	@rocket = Rocket.new(name: "Powerful North Korean Rocket", colour: "red", flying: false)
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
  	expected_value = "red"
  	actual_value = @rocket.colour
  	assert_equal(expected_value, actual_value)
  end 

  def test_color_writer
  	expected_value = "green"
  	actual_value = @rocket.colour=("green")
  	assert_equal(expected_value, actual_value)
  end 

  def test_flying
  	expected_value = false
  	actual_value = @rocket.flying?
  	assert_equal(expected_value, actual_value)
  end 

  
end
