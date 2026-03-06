void drawPetArea() {
  // Background for the pet zone
  fill(220, 210, 245);
  stroke(180, 160, 220);
  strokeWeight(2);
  rect(20, 20, 380, 390, 16);

  // Draw whichever graphic option you're using
  drawPetGraphic();
}

void drawPetGraphic() {

  // ---- Placeholder shape ----
  // Replace this with your own drawing,
  // or swap it for an image (see Option B below).

  // Body
  fill(170, 210, 255);
  noStroke();
  ellipse(210, 220, 140 + myPet.getWeight(), 120 + myPet.getWeight());

  // Head
  fill(170, 210, 255);
  ellipse(210, 145, 100, 90);

  // Eyes
  fill(50);
  ellipse(190, 138, 14, 14);
  ellipse(230, 138, 14, 14);

  // Eye shine
  fill(255);
  ellipse(195, 134, 5, 5);
  ellipse(235, 134, 5, 5);

  // Nose
  fill(255, 160, 180);
  ellipse(210, 152, 10, 7);

  // Mouth
  noFill();
  stroke(80);
  strokeWeight(2);
  
  arc(210, 160, 24, 14, 0, PI);

  // Ears
  fill(170, 210, 255);
  noStroke();
  triangle(178, 108, 168, 75, 195, 100);
  triangle(242, 108, 252, 75, 225, 100);

  // Inner ears
  fill(255, 180, 200);
  triangle(180, 105, 172, 82, 193, 100);
  triangle(240, 105, 248, 82, 227, 100);
