#Objectives:
1. Find the highest priced game
2. Find all of the games developed by Nintendo
3. Find the total number of adventure games
4. Find the average prices of all the video games
5. Find the game title with the lowest rating

We have a database full of video games. The schema should look like this
```
CREATE TABLE video_games (
  id INTEGER PRIMARY KEY,
  title TEXT,
  rating INTEGER,
  publisher TEXT,
  genre TEXT,
  price INTEGER
);
```
Run `rspec` to get started with your tests. Write your `SQL` in `lib/video_games.rb` to get the specs in `spec/video_game_spec.rb` to pass.

Note: Since it's a Ruby file, write your queries as strings inside each method already defined in `lib/video_games.rb` .
