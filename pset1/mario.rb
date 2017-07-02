def generate_pyramid
  height = get_height
  pyramid = draw_pyramid(height)
  puts '-----'
  puts pyramid
end

def get_height
  height = 24
  until height <= 23 && height > 0
    puts 'Enter the height of they pyramid, must be less than 23 and greater than 0: '
    return height = gets.chomp.to_i
  end
end

def draw_pyramid(height)
  counter = 2
  pyramid_string = ''
  height.times do
    counter.times do
      pyramid_string += '#'
    end
    pyramid_string += "\n"
    counter += 1
  end
  pyramid_string
end

generate_pyramid
