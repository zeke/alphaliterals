if ARGV[0].to_i > 10
  puts "we don't do it over 10"
  exit
end if
words = File.new("sowpods.txt", "r").readlines.compact.map{ |w| w.chomp.downcase }
alphaliterals = words.select { |w| w.size >= ARGV[0].to_i && w == w.split("").sort.join("") }
literal = Hash["1" => "one", "2" => "two", "3" => "three", "4" => "four", "5" => "five", "6" => "six", "7"=> "seven", "8" => "eight", "9" => "nine", "10" => "ten"]
puts "Found #{alphaliterals.size} alphaliterals with #{literal[ARGV[0]]} or more letters..."
puts alphaliterals.join ", "