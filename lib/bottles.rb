class Bottles

  def verses(start, stop)
    start.downto(stop).to_a.map { |bottles| verse(bottles) }.join("\n")
  end

  def verse(num_of_bottles)
    if num_of_bottles > 0
      next_bottle = num_of_bottles > 1 ? num_of_bottles - 1 : "no more"

      "#{num_of_bottles} #{one_or_more(num_of_bottles)} of beer on the wall, " +
      "#{num_of_bottles} #{one_or_more(num_of_bottles)} of beer.\n" +
      "Take #{one_or_it(num_of_bottles)} down and pass it around, " +
      "#{next_bottle} #{one_or_more(next_bottle)} of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def song
    verses(99, 0)
  end

  private

  def one_or_more(next_bottle)
    if next_bottle == 1
      return "bottle"
    end
    "bottles"
  end

  def one_or_it(num_of_bottles)
    if num_of_bottles > 1
      return "one"
    end
    "it"
  end
end
