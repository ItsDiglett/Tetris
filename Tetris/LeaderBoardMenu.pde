class LeaderboardMenu extends ScreenManager {
  private Leaderboard leaderboard;
  int bd;
  int xSpacing, ySpacing;
  int xDefault, yDefault;
  
  public LeaderboardMenu(Leaderboard leaderboard) {
    this.leaderboard = leaderboard;
    bd = 20;
    xSpacing = 150;
    ySpacing = (height/2 + bd*2)/leaderboard.getDisplayAmount();
    xDefault = width/2;
    yDefault = bd*2 + ySpacing;
    
    buttons.add(new GenButton(width/2, height-ySpacing,120,80,"Done"));
  }
  

  
  public void mousePressed() {
    for(Button but: buttons) {
      if (but.pressCheck(mouseX, mouseY)) {
        game.nextState();
      }
    }
  }
  
  public void display() {
    
    background(backgroundColour);
    fill(backgroundColour+10);
    rect(width/2,height/2,width-bd*2,height-bd*2);
    for (Button but: buttons) {
      but.display();
    }
    textAlign(CENTER, CENTER);
    fill(255);
    text("Initials", xDefault, yDefault);
    text("Score", xDefault - xSpacing, yDefault);
    text("Max Combo", xDefault + xSpacing, yDefault);
    int i = leaderboard.getBoard().size();
    for(Map.Entry<Integer, UsersDetails> position : leaderboard.getBoard().entrySet()) {  
      UsersDetails user = position.getValue();
      text(position.getKey().toString(), xDefault - xSpacing, yDefault + (ySpacing*i));
      text(user.getName(), xDefault, yDefault + (ySpacing*i));
      text(user.getCombo(), xDefault + xSpacing, yDefault + (ySpacing*i));
      --i;
    }
  } 
}
