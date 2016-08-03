describe 'populating the video games table' do
  before do
    @db = SQLite3::Database.new(':memory:')
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_create_file
    @sql_runner.execute_insert_file
  end

  it 'has 5 video games' do
    expect(@db.execute("SELECT COUNT(*) FROM video_games;").flatten[0]).to eq(5)
  end
end
