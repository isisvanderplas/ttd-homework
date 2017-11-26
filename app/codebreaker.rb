class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
      @equal_count = 0
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def to_array(input)
      input.split('')
    end

    def equal_count(input)
      input = input.to_array
      secret_number = @secret_number.to_array
      input.each do |number|
        if secret_number.include?(number)
          number.to_i
          count += 1
        end
      @equal_count
      end
    end

    def no_matches
      @equal_count == 0
    end

    def guess(input)
      output.puts "Try guessing a number with four digits" unless input.length == 4
      output.puts "" if no_matches
    end
  end
end
