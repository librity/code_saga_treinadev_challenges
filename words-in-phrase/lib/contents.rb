class Contents
  def can_make_sentence?(contents)
    sentence = contents.each(&:downcase!).pop.split
    sentence.each { |word| return false unless contents.include? word }; true
  end
end
