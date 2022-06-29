require 'socket'

s = TCPSocket.new 'localhost', 8989

s.write("/home/basiltkachenko/CLionProjects/course_project_2022/tmp/testfiles/#{ARGV[0]}.c\n")

s.each_line do |line|
    puts line
end

s.close