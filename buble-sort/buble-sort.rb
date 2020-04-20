numbers = Array.new(100){ |n|
    n = rand(1..1000)
}
isOrdenate = false

while !isOrdenate
    index = 0
    isOrdenate = true
    while index < numbers.length
        if numbers[index+1]
            if numbers[index] > numbers[index + 1]
                isOrdenate = false
                backup = numbers[index]
                numbers[index] = numbers[index + 1]
                numbers[index + 1] = backup
            end
        end
        index += 1
    end
end

puts numbers