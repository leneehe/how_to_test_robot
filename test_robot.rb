require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_needing_repairs_sent_to_station_1
    # arrange
    robo = Robot.new
    robo.needs_repairs = true
    robo.foreign_model = true
    # act
    expected = 1
    actual = robo.station
    # assert
    assert(expected, actual)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    robo = Robot.new
    robo.vintage_model = true
    robo.needs_repairs = true
    # act
    expected = 2
    actual = robo.station
    # assert
    assert(expected, actual)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange
    robo = Robot.new
    robo.needs_repairs
    # act
    expected = 3
    actual = robo.station
    # assert
    assert(expected, actual)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    # arrange
    robo = Robot.new
    # act
    expected = 4
    actual = robo.station
    # assert
    assert(expected, actual)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    # arrange
    robo = Robot.new
    # act
    expected = -1
    actual = robo.prioritize_tasks
    # assert
    assert(expected, actual)
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    # arrange
    robo = Robot.new
    robo.todos = [3, 99, 2, 9, 7]
    # act
    expected = 99
    actual = robo.prioritize_tasks
    # assert
    assert(expected, actual)
  end

  def test_workday_on_day_off_returns_false
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_true
    skip
    # arrange

    # act

    # assert
  end

end
