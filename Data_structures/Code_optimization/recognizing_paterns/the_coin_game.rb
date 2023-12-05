def game_winner(number_of_coins, current_player="you")
    if number_of_coins <= 0
        return current_player
    end
    if current_player == "you"
        next_player = "them"
    elsif current_player == "them"
        next_player = "you"
    end
    if game_winner(number_of_coins - 1, next_player) == current_player ||
        game_winner(number_of_coins - 2, next_player) == current_player
        return current_player
    else
        return next_player
    end
end
def game_winner_optimized(number_of_coins)
    if (number_of_coins - 1) % 3 == 0
        return "them"
    else
        return "you"
    end
end
p game_winner(1)
p game_winner(2)
p game_winner(3)
p game_winner(7)
p game_winner(12)