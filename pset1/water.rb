def bottles_used
  shower_minutes = get_minutes
  gallons_used = get_gallons(shower_minutes)
  ounces_used = get_ounces(gallons_used)
  bottles_used = get_bottles(ounces_used)
  puts "You used #{bottles_used} bottles of water."
end

def get_minutes
  puts 'Enter length in minutes of you shower: '
  shower_length = gets.chomp.to_i
end

def get_gallons(shower_minutes)
  shower_minutes * 1.5
end

def get_ounces(gallons_used)
  gallons_used * 128
end

def get_bottles(ounces_used)
  ounces_used / 16
end

bottles_used
