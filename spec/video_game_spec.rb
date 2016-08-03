require "spec_helper"

describe "Querying video games with SQL" do

  before do
    @db = SQLite3::Database.new(':memory:')
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_create_file
    @sql_runner.execute_data
  end
  after do
    File.open('lib/sql', 'w'){ |f| f.truncate(0) }
  end

  describe "#highest_priced_game" do
    it 'finds the game with the highest prices' do
      expect(@db.execute(highest_priced_game)).to eq([[59.99]])
    end
  end

  describe "#games_developed_by_nintendo" do
    it 'finds only the games developed by Nintendo' do
      expect(@db.execute(games_developed_by_nintendo)).to eq([
        [1, "Minecraft", 4, "Nintendo", "Adventure", 29.88],
        [2, "Super Smash Bros", 4, "Nintendo", "Fighting", 48.99],
        [3, "Pokken Tournament", 4, "Nintendo", "Fighting", 55.69],
        [4, "Super Mario Maker", 5, "Nintendo", "Platformer", 44.97],
        [6, "Mario Party 10", 3, "Nintendo", "Party", 25.47],
        [7, "The Legend of Zelda: Twilight Princess", 5, "Nintendo", "Adventure", 59.0]
      ])
    end
  end

  describe "#total_number_of_adventure_games" do
    it 'returns the total number of adventure games' do
      expect(@db.execute(total_number_of_adventure_games)).to eq([[4]])
    end
  end

  describe "#average_price_of_all_games" do
    it 'returns the average price of all of the games' do
      expect(@db.execute(average_price_of_all_games)).to eq([[46.73375]])
    end
  end

  describe "#game_title_with_the_lowest_rating" do
    it 'returns the game with the lowest_rating' do
      expect(@db.execute(game_title_with_the_lowest_rating)).to eq([["Mario Party 10"]])
    end
  end

end
