=begin
Write your code for the 'Proverb' exercise in this file. Make the tests in
`proverb_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/proverb` directory.
=end
class Proverb
  def initialize(*chain, qualifier: nil)
    @chain=chain
    @qualifier=if qualifier == nil
      chain.first
    else
      "#{qualifier} #{chain.first}"
    end
  end
  def to_s
    if @chain.length == 0
      return ""
    end
    sentences=if @chain.length > 1
      @chain.each_cons(2).map{|pair| "For want of a #{pair.first} the #{pair.last} was lost."}.to_a
    else 
      Array.new
    end
    sentences.concat(["And all for the want of a #{@qualifier}."])
    sentences.join("\n")
  end
end
