require("minitest/autorun")
require_relative("../bus_stop")
require_relative("../person")

class BusStopTest < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Princes St")
    @ewa = Person.new("Ewa", 27)
  end

  def test_bus_stop_has_name
    assert_equal("Princes St", @bus_stop.name)
  end

  def test_add_to_queue
    @bus_stop.add_to_queue(@ewa)
    assert_equal(1, @bus_stop.queue.count)
  end

end
