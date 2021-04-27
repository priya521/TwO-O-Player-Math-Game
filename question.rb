class Question
  attr_reader :description, :correct_answer
  def initialize
    number1 = rand(20)
    number2 = rand(20)
    @description = "What is the sum of #{number1} and #{number2} ?"
    @correct_answer = number1 + number2
  end
end