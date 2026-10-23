Table table;

void setup() {
  size(800, 600);
  table = loadTable("songs.csv");
  }

void draw() {
  background(245);

  fill(35);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Dear Data", width / 2, height / 2);

  for (TableRow row: table.rows()){
    String Date =row.getString("Date");
    String Song = row.getString("Song");
    String Artist = row.getString("Artist");
    int BPM = row.getInt("BPM");
    String Genre = row.getString("Genre");
    int Plays = row.getInt("Plays");


  }

}
