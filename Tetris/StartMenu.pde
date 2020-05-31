class StartMenu extends ScreenManager {
   
  public StartMenu() {
    buttons.add(new GenButton(width/2, height/2, 120, 80, "Start")); 
  }
  
  public void mousePressed() {
    boolean hasRan = false;
    for (int i = 0; i < buttons.size() && !hasRan; ++i) {
      if (buttons.get(i).pressCheck(mouseX, mouseY)) {
        hasRan = true;
        buttons.clear();
        println("start menu complete ");
        game.nextState();
      }
    }
  }
  public void display() {
    background(backgroundColour);
    for (Button button: buttons) {
      button.display();
    } 
  }
}
