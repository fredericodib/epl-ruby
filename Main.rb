require "aspector"

class ExampleClass
  def test
    puts 'test'
  end
end

aspect = Aspector do
  target do
    def do_this
      puts 'do_this'
    end
  end

  before :test, :do_this

  before :test do
    puts 'do_that'
  end
end

aspect.apply(ExampleClass)
element = ExampleClass.new
element.test
aspect.disable
element.test