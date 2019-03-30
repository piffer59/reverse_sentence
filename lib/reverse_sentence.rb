# A method to reverse the words in a sentence, in place.
# Time complexity: O(n), where n is the number of characters in the string.
# Space complexity: O(1), doing the reverse in place with a couple of other fixed amounts of space for variables
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  else
    reverse_words(my_sentence)
    start_index = 0
    end_index = my_sentence.length - 1
    word_reverse(my_sentence, start_index, end_index)
  end
end

def reverse_words(my_words)
  i = 0

  while i < my_words.length
    until my_words[i] != " "
      i += 1
    end

    last = i + 1
    while my_words[last] != " " && last < my_words.length
      last += 1
    end
    j = last - 1

    word_reverse(my_words, i, j)

    i = last
  end
  return my_words
end

def word_reverse(word, start_index, end_index)
  while start_index < end_index
    temp = word[start_index]
    word[start_index] = word[end_index]
    word[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return word
end
