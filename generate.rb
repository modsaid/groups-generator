## This ruby script target group size and the name of the file containing players names
## and displays randomly generated groups of the proper size
# 
# usage:
#   ruby generate.rb 6 players.txt

group_size=(ARGV[0] || 5).to_i
infile = ARGV[1] || "players"
players = File.open(infile).readlines.collect(&:strip)

groups=[]
while (!players.empty?) do 
  players.shuffle!
  groups << players.shift(group_size)
end

groups.each{|g| puts '-------'; puts g};''

