words = File.new("sowpods.txt", "r").readlines.compact.map{ |w| w.chomp.downcase }
alphaliterals = words.select { |w| w.size >= 6 && w == w.split("").sort.join("") }
puts "Found #{alphaliterals.size} alphaliterals with six or more letters.."
puts alphaliterals.join ", "