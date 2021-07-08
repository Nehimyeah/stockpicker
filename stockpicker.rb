def stockpicker(stock_action)
    max_profit = 0
    buy = 0
    sell = 0
    stock_action.each_with_index do |stock, index|
        i = index
        p i
        while i < stock_action.length
            if stock_action[i] - stock > max_profit
                buy = index
                sell = i
                max_profit = stock_action[i] - stock
            end
            i += 1
        end        
    end
    [buy, sell]
end

stockpicker([17,3,6,9,15,8,6,1,10, 10, 3, 10])