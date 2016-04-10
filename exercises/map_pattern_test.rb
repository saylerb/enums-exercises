gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MapPatternTest < Minitest::Test

  def test_capitalize
    names = ["alice", "bob", "charlie"]
    capitalized_names = []
    names.each do |name|
      capitalized_names << name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_doubles
    numbers = [1, 2, 3, 4, 5]
    doubles = []
    numbers.each do |number|
      # Your code goes here
      doubles << number * 2
    end
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    numbers = [1, 2, 3, 4, 5]
    squares = []
    # Your code goes here
    numbers.each do |num|
      squares << num * num
    end
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    names = ["alice", "bob", "charlie", "david", "eve"]
    # Your code goes here
    lengths = [] 
    names.each do |name|
      lengths << name.length
    end
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    numbers = [234, 10, 9119, 38881]
    # Your code goes here:
    zip_codes = []
    # with the rjust method, must be converted to string
    # first argument is the length, second is what string to pad with
    numbers.each do |num|
      zip_codes << num.to_s.rjust(5, "0")
    end
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_backwards
    names = ["alice", "bob", "charlie", "david", "eve"]
    # Your code goes here
    backwards = []
    names.each do |name|
      backwards << name.reverse
    end
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels
    words = ["green", "sheep", "travel", "least", "boat"]
    # Your code goes here
    without_vowels = []
    words.each do |word|
      no_vowel = ""
      vowels = ["a", "e", "i", "o", "u"]
      word.each_char do |char|
        no_vowel << char unless vowels.include?(char)
      end
      without_vowels << no_vowel
    end
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_letter
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    # Your code goes here
    trimmed = []
    animals.each do |animal|
      trimmed << animal[0...animal.length-1]
    end

    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed

  end

end
