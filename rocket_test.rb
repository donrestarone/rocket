require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
  	@rocket = Rocket.new(name: "Powerful North Korean Rocket", colour: "red", flying: true)
  	#@random_rocket = Rocket.new
  	@random_rocket = Rocket.new(flying: true)
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

  def test_flying_reader
  	skip
  	expected_value = true
  	actual_value = @rocket.flying?
  	assert_equal(expected_value, actual_value)
  end 

  def test_lift_off
  	skip
  	expected_value = false 
  	actual_value = @rocket.lift_off
  	assert_equal(expected_value, actual_value)
  end 

  def test_land 
  	skip
  	expected_value = true
  	actual_value = @rocket.land
  	assert_equal(expected_value, actual_value)
  end 

  def test_status
  	expected_value = "Rocket #{@rocket.name} is flying through the sky!"
  	actual_value = @rocket.status
  	assert_equal(expected_value, actual_value)
  end 

  def test_random_flying_reader
  	expected_value = true
  	actual_value = @rocket.flying?
  	assert_equal(expected_value, actual_value)
  end 
  def test_random_status 
  	expected_value = "Rocket #{@random_rocket.name} is flying through the sky!"
  	actual_value = @random_rocket.status 
  	assert_equal(expected_value, actual_value)
  end 

  def test_random_name 
  	expected_value = @random_rocket.name
  	actual_value = @random_rocket.name
  	assert_equal(expected_value, actual_value)
  end 

end
