describe 'creating video games table' do
  before do
    @db = SQLite3::Database.new(':memory:')
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_create_file
  end

  it 'creates a video games table with an id as a primary key' do
    expect(@db.execute("PRAGMA table_info(video_games);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
  end

  it 'creates a video games table with a title field' do
    expect{@db.execute("SELECT title FROM video_games;")}.to_not raise_exception
  end

  it 'creates a video games table with a rating field' do
    expect{@db.execute("SELECT rating FROM video_games;")}.to_not raise_exception
  end

  it 'creates a video games table with a developer field' do
    expect{@db.execute("SELECT developer FROM video_games;")}.to_not raise_exception
  end

  it 'creates a video games table with a genre field' do
    expect{@db.execute("SELECT genre FROM video_games;")}.to_not raise_exception
  end

  it 'creates a video games table with a price field' do
    expect{@db.execute("SELECT price FROM video_games;")}.to_not raise_exception
  end
end
