
VirtualPet myPet;

Button feedButton;
Button playButton;
Button sleepButton;

// How many milliseconds between each status update
// (increase to slow down, decrease to speed up)
final int UPDATE_INTERVAL = 1000;
int lastUpdateTime = 0;

// ---- Action message ----
String actionMessage = "";
int messageTime = 0;
final int MESSAGE_DURATION = 2000; // milliseconds to show the message

void setup() {
  size(600, 500);
  textFont(createFont("Arial", 16, true));

  myPet = new VirtualPet("Cilantro");

  // Buttons sit along the bottom of the screen
  // Button(label, x, y, width, height)
  feedButton = new Button("Feed", 100, 430, 120, 45);
  playButton = new Button("Play", 280, 430, 120, 45);
  sleepButton = new Button("Sleep", 460,430,120,45); 
}

void draw() {
  background(245, 240, 255);

  // ---- Timed status update ----
  if (millis() - lastUpdateTime >= UPDATE_INTERVAL) {
    myPet.updateStatus();
    lastUpdateTime = millis();
  }

  // ---- Draw sections ----
  drawPetArea();
  drawStats(myPet);
  feedButton.display();
  playButton.display();
  sleepButton.display();
  drawMessage();
}

void mousePressed() {
  if (feedButton.isClicked(mouseX, mouseY)) {
    Food f = new Food("Strawberry Mochi", 3, 2, 2);
    myPet.feed(f);
    showMessage(f.getName() + " eaten!");
  }

  if (playButton.isClicked(mouseX, mouseY)) {
    Game g = new Game("Coin Toss", 2, 1);
    myPet.play(g);
    showMessage(g.getName() + " played!");
  }
  
  if (sleepButton.isClicked(mouseX, mouseY)){
    Sleep s = new Sleep("Sleep", 10);
    myPet.sleep(s);
    showMessage("Cilantro " + "slept");
  }
}

// Call this to set a new message
void showMessage(String msg) {
  actionMessage = msg;
  messageTime = millis();
}
