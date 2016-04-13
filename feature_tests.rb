#!/usr/bin/env ruby

require "./lib/dockingstation"
require "./lib/bike"

stn = DockingStation.new
bike = Bike.new
stn.dock bike

# As a person,
# So that I can use a bike,
# I'd like a docking station to release a bike.

raise "bike is not a Bike" unless stn.release_bike.class == Bike

# As a person,
# So that I can use a good bike,
# I'd like to see if a bike is working

raise "bike is not working" unless stn.release_bike.working?

# As a member of the public
# So I can return bikes I've hired
# I want to dock my bike at the docking station

bike2 = Bike.new

raise "#dock does not return docked bike" unless stn.dock(bike2) == bike2

# As a member of the public
# So I can decide whether to use the docking station
# I want to see a bike that has been docked

raise "#bike does not return the docked bike" unless stn.bike == bike2

# As a member of the public,
# So that I am not confused and charged unnecessarily,
# I'd like docking stations not to release bikes when there are none available.

raise "dock returns a different bike to the docked bike" unless stn.release_bike == bike2

empty_stn = DockingStation.new

#raise "station releases a bike when it is empty" if stn.release_bike.class == Bike
