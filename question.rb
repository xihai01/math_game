# Question class manages the state for the question
class Question
  attr_reader :correct_ans

  def initialize
    @correct_ans = 0;
  end

  def generate_question
    num1 = Random.new.rand(1..20) + 1;
    num2 = Random.new.rand(1..20) + 1;
    @correct_ans = num1 + num2
    question = "What does #{num1} plus #{num2} equal?"
  end
end