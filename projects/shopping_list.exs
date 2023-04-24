shopping_list = []
shopping_list = shopping_list ++ ["grapes", "walnuts", "apples"]
shopping_list = shopping_list ++ ["pizza", "chocolate", "blueberries"]
shopping_list = shopping_list -- ["grapes", "walnuts"]
shopping_list = shopping_list ++ ["banana", "banana", "banana"]
IO.inspect(shopping_list)

shopping_list = []
shopping_list = shopping_list ++ [milk: 1, egg: 12]
shopping_list = shopping_list ++ [bars_of_butter: 2, candies: 10]
shopping_list = shopping_list -- [bars_of_butter: 2]
shopping_list = shopping_list -- [candies: 10]
shopping_list = shopping_list ++ [candies: 5]

IO.inspect(shopping_list)
