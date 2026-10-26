Table table;

void setup() {
  size(800, 600);
  table = loadTable("songs.csv", "header");
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

    String group = groupGenre(Genre);

  }
}


String groupGenre(String genre) {
  String lowerGenre = genre.toLowerCase();

  if (lowerGenre.contains("rnb") || lowerGenre.contains("soul")) {
    return "rnb";
  } else if (lowerGenre.contains("hip-hop") || lowerGenre.contains("rap") || lowerGenre.contains("trap")) {
    return "hip-hop";
  } else if (lowerGenre.contains("afro") || lowerGenre.contains("house")) {
    return "afro";
  } else if (lowerGenre.contains("pop") || lowerGenre.contains("rock")) {
    return "pop";
  } else {
    return "other";
  }
}
