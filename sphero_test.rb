###########################################
#  A simple script to make the sphero move.
#     Andrew Emrazian   July 2015
###########################################

# This part is borrowed as an example to get me going from .
require "rubygems"
require "Sphero"

s = Sphero.new "/dev/tty.Sphero-PRO-RN-SPP"
s.ping

s.color("red")
sleep 1

s.roll 100, 0
s.keep_going 1
s.stop
s.sleep 0.5
s.roll 100, 180
s.keep_going 1

s.stop

=begin
i = 10
while i > 0
  s.color "yellow"
  sleep 1
  s.color "orange"
  sleep 1
  s.color "magenta"
  sleep 1
  s.color "red"
  sleep 1
  s.color "purple"
  sleep 1
  s.color "blue"
  sleep 1
  s.color "green"
  sleep 1
  i += 1
end
=end