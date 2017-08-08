require 'set'

def firstDuplicate(a)
    mySet = Set.new

    for i in a do
      return i if mySet.include?(i)
      mySet << i
    end
    -1
end
