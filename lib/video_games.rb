def highest_priced_game
  "SELECT MAX(price) FROM video_games;"
end

def games_developed_by_nintendo
  "SELECT * FROM video_games WHERE developer = 'Nintendo';"
end

def total_number_of_adventure_games
  "SELECT COUNT (genre) FROM video_games WHERE genre = 'Adventure';"
end

def average_price_of_all_games
  "SELECT AVG(price) FROM video_games;"
end

def game_title_with_the_lowest_rating
  "SELECT title FROM video_games WHERE rating = (SELECT MIN(rating) FROM video_games);"
end
