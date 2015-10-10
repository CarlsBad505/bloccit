module RandomAdData
  def random_ad_paragraph
    sentences = []
    rand(4..6).times do
      sentences << random_ad_sentence
    end
    sentences.join(" ")
  end
  
  def random_ad_sentence
    strings = []
    rand(2..8).times do
      strings << random_ad_word
    end
    sentence = strings.join(" ")
    sentence.capitalize << "."
  end
  
  def random_ad_word
    letters = ('a'..'z').to_a
    letters.shuffle!
    letters[0, rand(3..8)].join
  end
  
  def random_ad_price
    rand(50..200)
  end
end