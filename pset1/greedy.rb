def get_change
  coins = [0.25, 0.10, 0.5, 0.1]
  change = []

  total_change = get_total_change
  change = get_change_combination(coins, total_change)
  p change
end

def get_total_change
  total_change = -1
  until total_change > 0
    puts 'How much change is owed?'
    total_change = gets.chomp.to_f
  end
  total_change
end

def get_change_combination(coins, total_change)
  return_change = []

  coins.each do |coin|
    while coin <= total_change
      return_change << coin
      total_change -= coin
      if total_change == 0
        return return_change
      end
    end
  end
end

get_change
