# BMP2SSD1306

BMP2SSD1306 is an image converter for SSD1306 OLED. It converts the BMP image into the file that has the memory layout of the SSD1306.

## Requirements

Ruby 2.4 or higher.

## Installation

Install it yourself as:

```
$ gem install bmp2ssd1306
```

## Usage

Please specify the BMP file to convert from the command line.

```
$ bmp2ssd1306 t-rex1.bmp t-rex2.bmp
$ ls *.img
t-rex1.img t-rex2.img
```

## Options

```
Usage: bmp2ssd1306 [options] <image>...
    -v, --verbose                    Show the files being worked on
    -o, --output DIR                 Write images converted to DIR
    -s, --suffix SUFFIX              Change the suffix from .img to SUFFIX
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/takai/bmp2ssd1306.
