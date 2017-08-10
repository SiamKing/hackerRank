require 'time'

def stat(strg)
  return strg if strg.empty?

  strg = strg.gsub(/\|/, ":").split(', ')
  times = strg.map {|t| Time.parse(t).to_f}.sort
  len = strg.length

  median = len % 2 == 1 ? times[len / 2] : ((times[len / 2 - 1] + times[len / 2]) / 2)

  "Range: #{format_time(times.max - times.min)} Average: #{format_time(times.inject(:+) / len)} Median: #{format_time(median)}"
end

def format_time(time)
  Time.at(time).utc.strftime("%H|%M|%S")
end
