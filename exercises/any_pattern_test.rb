gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AnyPatternTest < Minitest::Test

  def test_has_at_least_one_zero
    numbers = [2, 0, 9, 3, 0, 1]
    has_zero = false
    numbers.each do |number|
      has_zero = true if number.zero?
    end
    assert has_zero
  end

  def test_does_not_have_any_zeros
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      if number == 0
        has.zero = true
        break
      end

    end
    refute has_zero
  end

  def test_has_at_least_one_alice
    names = ["Bill", "Bob", "Burton", "Alice", "Brandon"]
    has_alice = false
    names.each do |name|
      if name == "Alice"
        has_alice = true
        break
      end
    end

    assert has_alice
  end

  def test_no_alices
    names = ["Chuck", "Charlene", "Cory", "Chris", "Carl"]
    has_alice = false
    names.each do |name|
      if name == "Alice"
        has_alice = true
        break
      end
    end
    refute has_alice
  end

  def test_has_a_multi_word_phrase
    phrases = ["Sure!", "OK.", "I have no idea.", "Really?Whatever."]
    has_multi_word_phrase = false

    phrases.each do |phrase|
      if phrase.include?(" ")
        has_multi_word_phrase = true 
        break
      end
    end
    
    assert has_multi_word_phrase
  end

  def test_no_monkeys
    animals = ["elephant", "hippo", "jaguar", "python"]
    has_monkeys = false

    animals.each do |animal|
      if animal == "monkey"
        has_monkeys = true
        break
      end
    end

    refute has_monkeys
  end

  def test_no_multiples_of_five
    numbers = [3, 1, 3, 2, 4, 9, 8]
    multiples_of_5 = false

    numbers.each do |number|
      return mutliples_of_5 = true if number % 5 == 0
    end

    refute multiples_of_5
  end

end
