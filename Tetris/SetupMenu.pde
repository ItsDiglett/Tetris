class SetupMenu extends ScreenManager {
  private ArrayList<Initial> initials = new ArrayList<Initial>();
  
  public SetupMenu() {
    buttons.add(new GenButton(width/2, height-height/5,120,60,"Done"));
    
    int wid = 60;
    int hei = 80;
    int inputX = height/2 - wid/2;
    int inputY = width/2 - hei/2;
    int spacing = 20;
    
    inputX -= wid + spacing;
    for (int i = 0; i < 3; ++i) {
      initials.add(new Initial(inputX, inputY, wid, hei, 'a'));
      inputX += wid + spacing;
    }
    println("Setup buttons added ");
  }
  
  public void display() {
    background(backgroundColour);
    for (Button button: buttons) {
      button.display();
    }
    for (Initial ini: initials) {
      ini.display(); 
    }
  }
  
  public void mousePressed() {
    String inits = "";
    for (int i = 0; i < initials.size(); ++i) {
      initials.get(i).pressCheck(mouseX, mouseY);
    }
    boolean hasRan = false;
    for (int i = 0; i < buttons.size() && !hasRan; ++i) {
      if (buttons.get(i).pressCheck(mouseX,mouseY)) {
        for (Initial ini: initials) {
          inits += ini.initial;
        }
        game.currUser.inputInitials(inits);
        println("The name input was " + inits);
        
        hasRan = true;
        buttons.clear();
        initials.clear();
        game.nextState();
      }
    }
  }
}
