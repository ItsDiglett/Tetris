static class ScreenManager {
  private static ArrayList<Button> buttons = new ArrayList<Button>();
  private static ArrayList<Initial> initials = new ArrayList<Initial>();
  private static Tetris s;
  
  public static void  setSketch(Tetris sketch) {
    ScreenManager.s = sketch;
  }
  
  public static void startMenuSetup() {
    buttons.add(s.new GenButton(s.width/2, s.height/2, 120, 80, "Start"));
    println("start button added");
  }
  
  public static void startMenu() {
    s.background(s.backgroundColour);
    for (Button button: buttons) {
      button.display();
    }
    boolean hasRan = false;
    if (s.mousePressed) {
      for (int i = 0; i < buttons.size() && !hasRan; ++i) {
        if (buttons.get(i).pressCheck(s.mouseX,s.mouseY)) {
          hasRan = true;
          buttons.clear();
          println("start menu complete ");
          s.game.nextState();
        }
      }
    }
  }
  public static void gameSetupMenuSetup() {
    buttons.add(s.new GenButton(s.width/2, s.height/2,120,60,"Done"));
    
    int wid = 60;
    int hei = 80;
    int inputX = s.height/2 - wid/2;
    int inputY = s.width/2 - hei/2;
    int spacing = 20;
    
    inputX -= wid + spacing;
    for (int i = 0; i < 3; ++i) {
      initials.add(s.new Initial(inputX, inputY, wid, hei, 'a'));
      inputX += wid + spacing;
    }
    println("Setup buttons added ");
  }
  
  public static void gameSetup() {
    String inits = "";
    s.background(s.backgroundColour);
    for (Button button: buttons) {
      button.display();
    }
    for (Initial ini: initials) {
      ini.display(); 
    }
    boolean hasRan = false;
    if (s.mousePressed) {
      for (int i = 0; i < initials.size() && !hasRan; ++i) {
        initials.get(i).pressCheck(s.mouseX, s.mouseY);
      }
      for (int i = 0; i < buttons.size() && !hasRan; ++i) {
        if (buttons.get(i).pressCheck(s.mouseX,s.mouseY)) {
          for (Initial ini: initials) {
            inits += ini.initial;
          }
          s.game.currUser.inputInitials(inits);
          println("The name input was " + inits);
          
          hasRan = true;
          buttons.clear();
          initials.clear();
          s.game.nextState();
        }
      }
    }
  }
}
