# ipv4map
<p align="center">
  <img src="https://github.com/ipv4map/tiles_color/blob/master/0/0/0.png" alt="example image"/>
</p>
Tool to generate a map of the ipv4 address space using hilbert curves

## Usage
`hilbert.py` reads a newline seperated list of ips that gets colored white on
the resulting image. It reads either from a file specified as argument or from stdin.
The resulting image has the dimensions 65536x65536 making it difficult to view as a whole in 
conventional image viewers. An example for generating tiles for viewing with as a zoomable map 
can be found in `generate_tiles.sh`. The resulting map can be found under [https://ipv4map.github.io](https://ipv4map.github.io) ([source](https://github.com/ipv4map/ipv4map.github.io))

## Data
Obtaining data on the whole ipv4 address space can be difficult, because most
ISP's don't like aggressive portscanning. Fortunately [censys.io](censys.io) provides 
their datasets for free download. An example script using their datasets can 
be found in `download.sh`.

## Requirements
* [vips](https://github.com/jcupitt/libvips) for generating tiles
* [lz4](https://github.com/lz4/lz4), [jq](https://github.com/stedolan/jq) for downloading and analysing data from [censys.io](censys.io)
* [PIL](http://www.pythonware.com/products/pil/), [tqdm](https://pypi.python.org/pypi/tqdm) for generating the map
