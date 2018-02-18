require 'pry'

class CardGenerator

  def initialize(filename)
    File.open(filename, "r").each_line do |line|
      # question: "What is 5 + 5?" answer: "10"
      data = line.split(/\n/)
      question, answer = data.map{ |d| d.split(",") }.flatten

    end

  end

end
