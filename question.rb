# Question class manages the state for the question
class Question
  def initialize
    @correct_ans = 0;
  end

  def generate_question
    num1 = Random.new.rand(1..20) + 1;
    num2 = Random.new.rand(1..20) + 1;
    @correct_ans = num1 + num2
    question = "What does #{num1} plus #{num2} equal?"
  end

  def get_ans
    @correct_ans
  end
end

q1 = Question.new()
q2 = Question.new()
q3 = Question.new()
puts q1.generate_question
puts q1.get_ans
puts q2.generate_question
puts q2.get_ans
puts q3.generate_question
puts q3.get_ans