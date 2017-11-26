class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
      @number_match = 0
      @perfect_match = 0
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def to_array(input)
      input.split('')
    end

    def number_match(input)
      secret_number = @secret_number.to_array
      input.each_char do |c|
      number_match if secret_number.include?(c)
      end
    end

    def counter
      @number_match += 1 if number_match
      @exact_match += 1 if exact_match
    end

    def no_matches
      @number_match == 0
    end

    def exact_match(input)
      secret_number = @secret_number.to_array
      input.each_char do |c|
        secret_number.each_char do |s|
          c == s
        end
      end
    end


    def guess(input)
      output.puts "Try guessing a number with four digits" unless input.length == 4
      output.puts "" if no_matches
      output.puts "-" if @number_match = 1
      output.puts "+" if @exact_match = 1
      output.puts "--" if @number_match = 2
      output.puts "+-" if @number_match = 1 && @exact_match == 1
      output.puts "+++" if @exact_match = 3
      output.puts "---" if @number_match = 3
      output.puts "++-" if @exact_match = 2 && @number_match = 1
      output.puts "++++" if @exact_match = 4
      output.puts "----" if @number_match = 4
      output.puts "++--" if @exact_match = 2 && @number_match = 2

    end
  end
end










































#
