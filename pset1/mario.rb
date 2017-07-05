def generate_pyramid
  height = get_height
  pyramid = draw_pyramid(height)
  puts pyramid
end

def get_height
  height = 24
  until height <= 23 && height > 0
    puts 'Enter the height of they pyramid, must be less than 23 and greater than 0: '
    height = gets.chomp.to_i
  end
  height
end

def draw_pyramid(height)
  counter = 2
  space_counter = height - 1
  pyramid_string = ''
  height.times do
    space_counter.times do
      pyramid_string += ' '
    end
    counter.times do
      pyramid_string += '#'
    end
    pyramid_string += "\n"
    counter += 1
    space_counter -= 1
  end
  pyramid_string
end

generate_pyramid
