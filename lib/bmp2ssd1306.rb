require 'rmagick'

require "bmp2ssd1306/version"

module BMP2SSD1306
  def convert(path)
    buff = ''

    image = Magick::Image.read(path).first
    cols = image.columns
    rows = image.rows

    (0...rows).step(8) do |row|
      (0...cols).each do |col|
        byte = []
        (0...8).each do |cur|
          pixel = image.pixel_color(col, row + cur)
          bit = pixel.red > 0 && pixel.green > 0 && pixel.blue > 0 ? 0 : 1

          byte << bit
        end
        buff << [byte.join].pack('b*')
      end
    end

    buff
  end

  module_function :convert
end
