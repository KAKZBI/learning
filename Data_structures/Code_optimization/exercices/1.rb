def both_sports(array1, array2)
    array2_hash = {}
    both_sport_players = []
    # Convert second array data into player  hash table:
    array2.each do |player|
        player_name = player[:first_name] + " " + player[:last_name]
        array2_hash[player_name] = player[:team]
    end
    array1.each do |player|
        player_name = player[:first_name]+ " " + player[:last_name]
        if array2_hash[player_name]
            both_sport_players << player_name
        end
    end
    both_sport_players
end

basketball_players = [
    {first_name: "Jill", last_name: "Huang", team: "Gators"},
    {first_name: "Janko", last_name: "Barton", team: "Sharks"},
    {first_name: "Wanda", last_name: "Vakulskas", team: "Sharks"},
    {first_name: "Jill", last_name: "Moloney", team: "Gators"},
    {first_name: "Luuk", last_name: "Watkins", team: "Gators"}
    ]
football_players = [
        {first_name: "Hanzla", last_name: "Radosti", team: "32ers"},
        {first_name: "Tina", last_name: "Watkins", team: "Barleycorns"},
        {first_name: "Alex", last_name: "Patel", team: "32ers"},
        {first_name: "Jill", last_name: "Huang", team: "Barleycorns"},
        {first_name: "Wanda", last_name: "Vakulskas", team: "Barleycorns"}
    ]

p both_sports(basketball_players, football_players)
