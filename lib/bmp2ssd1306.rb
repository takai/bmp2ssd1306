require 'rmagick'

require "bmp2ssd1306/version"

module BMP2SSD1306
  def convert(path)
    buff = ''

    image = Magick::Image.read(path).first
    cols = image.columns
    rows = image.rows

    (0...cols).each do |col|
      0.step(rows - 1, 8) do |row|
        bytes = []
        0.step(8) do |curr|
          pixel = image.pixel_color(col, row + curr)
          bitmap = pixel.red > 0 && pixel.green > 0 && pixel.blue > 0 ? 0 : 1

          bytes << bitmap
        end
        buff << bytes.pack('C*')
      end
    end

    buff
  end

  module_function :convert
end
