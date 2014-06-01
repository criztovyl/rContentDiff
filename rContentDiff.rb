#!/usr/bin/env ruby
class ContentDiff 
    def initialize(lines1, lines2)
        @lines1 = lines1
        @lines2 = lines2 
    end
    def diff()
        same = @lines1.sort.hash == @lines2.sort.hash
        str = same ? "File contents equal\n" : "File contents differs\n"
        if !same
            str += "Lines only in lines 1:\n"
            @lines1.each{|line| if !@lines2.include? line then str += line end}
            str += "Lines only in lines 2:\n"
            @lines2.each{|line| if !@lines1.include? line then str += line end}
        end
        return str
    end
end
file1 = ARGV[0]
file2 = ARGV[1]
cd = ContentDiff.new(IO.readlines(file1), IO.readlines(file2))
puts cd.diff()
