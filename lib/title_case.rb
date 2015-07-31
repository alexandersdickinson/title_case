class String
  define_method(:title_case) do
    prep_article = ["the", "a", "an", "on", "over", "with", "from", "to", "across", "about"]
    
    split_sentence = self.split()
    split_sentence[0].capitalize!()
    for i in 1..(split_sentence.length - 1) do
      match = false
      prep_article.each() do |prep|
        if prep == split_sentence[i]
          match = true
          break
        else
        end
      end
      split_sentence[i].capitalize!() if match == false
    end
    split_sentence.join(" ")
  end
end
