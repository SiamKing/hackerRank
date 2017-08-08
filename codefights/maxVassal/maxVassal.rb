def maxVassal(num)
    i = Math.sqrt(num).floor / 2
    while i > 0
        if i**3 < num && i.gcd(num)
            break
        else
            i -= 1
        end
    end
    i
end
