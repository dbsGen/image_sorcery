require '../lib/image_sorcery'

class Test
  SOURCE = "#{File.dirname(__FILE__)}/test.jpg"

  class << self
    def convert_test
      image = ImageSorcery.new(SOURCE)
      image.convert("#{File.dirname(__FILE__)}/convert_output.jpg", quality: 80, resize: '64x64!')
    end

    def composite_test
      image = ImageSorcery.new(SOURCE)
      image.composite("#{File.dirname(__FILE__)}/overlap.png", "#{File.dirname(__FILE__)}/composite_output.jpg", gravity: 'center')
    end
  end
end

Test.composite_test

