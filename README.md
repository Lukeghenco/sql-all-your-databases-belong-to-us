#Objectives:
1. create a video games table
2. insert 5 games into the video games table
3. Find the highest priced game
4. Find all of the games developed by Nintendo
5. Find the total number of adventure games
6. Find the average prices of all the video games
7. Find the game title with the lowest rating

Step: 1

We are going to create a database full of video games. In the `lib/create.sql` file we need to create our database. The schema should look like this.
```
CREATE TABLE video_games (
  id INTEGER PRIMARY KEY,
  title TEXT,
  rating INTEGER,
  developer TEXT,
  genre TEXT,
  price FLOAT
);
```

Step: 2

Insert 5 games into the video games table. You can make these up.

Step: 3

In the `lib/video_game_queries.rb` file create the queries needed to pass the tests. Remember that since this is a `.rb` file that you need to place the SQL query inside of a " "

Run `rspec` to get started with your tests. Write your `SQL` in `lib/video_game_queries.rb` to get the specs in `spec/video_game_spec.rb` to pass.
