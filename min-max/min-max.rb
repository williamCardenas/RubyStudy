#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
    min = nil
    max = nil
    sum = 0

    arr.each_with_index{ |int, index| 
        sum += int
        if min.nil?
            min = int
        elsif int < min
            min = int
        end
        if max.nil?
            max = int
        elsif int > max
            max = int
        end
    }
    resultMax = sum - min
    resultMin = sum - max
    puts "#{resultMin} #{resultMax}"

end

arr = Array.new(100){ |n|
    n = rand(1..1000)
}

miniMaxSum arr
