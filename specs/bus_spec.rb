require("minitest/autorun")
require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Haymarket")
    @person = Person.new("Matthew", 21)
    @bus_stop = BusStop.new("Princes St")
  end

  def test_bus_route_number
    assert_equal(22, @bus.route_number)
  end

  def test_destination
    assert_equal("Haymarket", @bus.destination)
  end

  def test_drive
    assert_equal("Brum Brum!", @bus.drive())
  end

  def test_no_of_passengers
    assert_equal(0, @bus.no_of_passengers())
  end

  def test_pick_up
    @bus.pick_up(@person)
    assert_equal(1, @bus.no_of_passengers())
  end

  def test_drop_off
    @bus.drop_off(@person)
    assert_equal(0, @bus.no_of_passengers())
  end

  def test_remove_all
    @bus.pick_up(@person)

    person2 = Person.new("Ewa", 27)
    person3 = Person.new("James", 29)

    @bus.pick_up(person2)
    @bus.pick_up(person3)


    @bus.remove_all()
    assert_equal(0, @bus.no_of_passengers())
  end

  def test_pick_up_from_stop
    ben = Person.new("Ben", 35)
    ewa = Person.new("Ewa", 27)
    @bus_stop.add_to_queue(@person)
    @bus_stop.add_to_queue(ben)
    @bus_stop.add_to_queue(ewa)

    @bus.pick_up_from_stop(@bus_stop)
    assert_equal(0, @bus_stop.queue.count)
    #assert_equal(3, @bus.no_of_passengers())
    #assert_equal("Ewa", @bus_stop.queue)
  end


end
