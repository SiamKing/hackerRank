require 'time'

def stat(strg)
  return strg if strg.empty?

  strg = strg.gsub(/\|/, ":").split(', ')
  times = strg.map {|t| Time.parse(t).to_f}.sort
  len = strg.length

  median = len % 2 == 1 ? times[len / 2] : ((times[len / 2 - 1] + times[len / 2]) / 2)

  "Range: #{Time.at(times.max - times.min).utc.strftime("%H|%M|%S")} Average: #{Time.at(times.inject(:+) / strg.length).utc.strftime("%H|%M|%S")} Median: #{Time.at(median).utc.strftime("%H|%M|%S")}"
end
