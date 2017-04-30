#!/bin/bash 
vips dzsave test.png tiles2 --layout google --background 0 --centre --tile-size=256 --suffix='.png[compression=9]
