require "spec_helper"

RSpec.describe BMP2SSD1306 do
  describe '.convert' do
    subject { BMP2SSD1306.convert(source) }

    let(:source) { File.join(__dir__, '/data/source.bmp') }
    let(:expected) { IO.read(File.join(__dir__, '/data/expected.img'), encoding: 'ASCII-8BIT') }

    it { expect(subject).to eq(expected) }
  end
end
