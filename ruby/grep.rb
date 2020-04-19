# grep.rb regexp filename
puts ARGV[0].class
IO.readlines(File.new(ARGV[1])).each_with_index do |itm, idx| 
  puts "line #{idx+1} #{itm}" if itm =~ /#{ARGV[0]}/
end