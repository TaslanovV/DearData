Table table;

void setup() {
  size(1200, 800);
  table = loadTable("songs.csv", "header");
}

void draw() {
  background(245);
  fill(20);
  circle(width / 2, height / 2, 560);
  fill(245);
  circle(width / 2, height / 2, 120);
  fill(35);
  textAlign(CENTER, CENTER);
  textSize(16);
  text("Dear Data", width / 2, height / 2);

  noFill();
  strokeWeight(1);
  stroke(147);
  circle(width/2, height /2, 190);
  circle(width/2, height /2, 280);
  circle(width/2, height /2, 370);
  circle(width/2, height /2, 450);
  circle(width/2, height /2, 524);


  for (TableRow row : table.rows()) {
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

  if (lowerGenre.contains("soul") && !lowerGenre.contains("rnb")) {
    return "soul";
  } else if (lowerGenre.contains("rnb")) {
    return "rnb";
  } else if (lowerGenre.contains("trap")) {
    return "trap";
  } else if (lowerGenre.contains("hip-hop") || lowerGenre.contains("rap")) {
    return "hip-hop";
  } else if (lowerGenre.contains("afro")) {
    return "afro";
  } else if (lowerGenre.contains("house")) {
    return "house";
  } else {
    return "pop";
  }
}
