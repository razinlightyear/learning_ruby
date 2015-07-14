###########################################
#  A simple script to make the sphero move.
#     Andrew Emrazian   July 2105
###########################################

# This part is borrowed as an example to get me going.
require "rubygems"
require "Sphero"

s = Sphero.new "/dev/tty.Sphero-PRO-RN-SPP"
s.ping

# Roll 0 degrees, speed 125
s.roll(125, 0)

# Turn 360 degrees, 30 degrees at a time
0.step(360, 30) { |h|
  h = 0 if h == 360

  # Set the heading to h degrees
  s.heading = h
  sleep 1
}
sleep 1
s.stop
