#!/usr/bin/env bash

cat /sys/devices/platform/coretemp.0/hwmon/hwmon5/temp*_input
cat /sys/devices/platform/coretemp.0/hwmon/hwmon5/temp*_max
cat /sys/devices/platform/coretemp.0/hwmon/hwmon5/temp*_crit

cat /sys/class/hwmon/hwmon5/temp*_label Core number
cat /sys/class/hwmon/hwmon5/temp*_input Core temp
cat /sys/class/hwmon/hwmon5/temp*_max   Max temp
cat /sys/class/hwmon/hwmon5/temp*_crit  Crit temp

cat /sys/class/hwmon/hwmon3/fan1_input RPM
cat /sys/class/hwmon/hwmon3/fan2_input RPM

# Do this
cat /sys/class/power_supply/BAT0/charge_full_design
cat /sys/class/power_supply/BAT0/charge_full
cat /sys/class/power_supply/BAT0/charge_now
cat /sys/class/power_supply/BAT0/status

# Or do this
cat /sys/class/power_supply/BAT0/uevent

# To get time remaining
(POWER_SUPPLY_CHARGE_FULL - POWER_SUPPLY_CHARGE_NOW) / POWER_SUPPLY_CURRENT_NOW

# It should look like this
  Battery #1     : present
    Remaining capacity : unknown, 50.14%, 01:44:20
    Design capacity    : 5856 mA
    Last full capacity : 4785 mA, 81.71% of design capacity
    Capacity loss      : 18.29%
    Present rate       : 1372 mA
    Charging state     : Charging
    Battery type       : Li-ion
    Model number       : Dell
    Serial number      : 2372

# Make it colorful
$ upower -i /org/freedesktop/UPower/devices/battery_BAT0
  native-path:          BAT0
  vendor:               SMP
  model:                L14M4P23
  serial:               756
  power supply:         yes
  updated:              Monday 03 December 2018 07:56:18 PM IST (95 seconds ago)
  has history:          yes
  has statistics:       yes
  battery
    present:             yes
    rechargeable:        yes
    state:               discharging
    warning-level:       none
    energy:              28.23 Wh
    energy-empty:        0 Wh
    energy-full:         52.26 Wh
    energy-full-design:  60 Wh
    energy-rate:         10.714 W
    voltage:             14.819 V
    time to empty:       2.6 hours
    percentage:          54%
    capacity:            87.1%
    technology:          lithium-ion
    icon-name:          'battery-good-symbolic'
  History (charge):
    1543847178	54.000	discharging
  History (rate):
    1543847178	10.714	discharging
