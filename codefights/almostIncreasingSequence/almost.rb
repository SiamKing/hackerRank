def almostIncreasingSequence(seq)
    i = 0
    c = 0

    while i < seq.length - 1
      arr = [].replace(seq)
      arr.slice!(i, 1)

      return true if arr == arr.sort.uniq
      c += 1
      break if c > 2
      i += 1
    end

    c < 2
end
