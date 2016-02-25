def stock_picker(stock_prices)
  current_winner = [0, nil]
  stock_prices.each_with_index do |sell_price, sell_index|
    stock_prices.each_with_index do |buy_price, buy_index|
      next if sell_index < buy_index
      difference = sell_price - buy_price
      if (difference > current_winner[0])
        current_winner = [difference, [buy_index, sell_index]]
      end
    end
  end
  current_winner[1]
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).inspect
