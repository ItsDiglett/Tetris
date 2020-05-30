import java.util.*;

class LeaderBoard {
  class UsersDetails {
    String name;
    int maxCombo;
    
    public UsersDetails(String name, int maxCombo) {
      this.name = name;
      this.maxCombo = maxCombo;
    }
    String getName() {
      return name;
    }
    int getInt() {
      return maxCombo;
    } 
  }
  
  TreeMap<Integer,UsersDetails> board = new TreeMap<Integer,UsersDetails>();
  int displayAmount = 10;
  
  public LeaderBoard() {
    
  }
  public void addToBoard(int score, String name, int combo) {
    if (board.size() < displayAmount) {
      board.put(score,new UsersDetails(name,combo));
    }
  }
  public void display() {
    
    boolean isShowing = true;
    
    
    //bd is boarder distance
    int bd = 10;
    int xSpacing = 100;
    int ySpacing;
    ySpacing = (height + bd*2)/displayAmount;
    int xDefault = width/2;
    int yDefault = bd*2 + ySpacing;
    
    GenButton doneBut = new GenButton(width/2, height-ySpacing,120,80,"Done");
    
    while (isShowing) {
      
      push();
      textMode(CENTER);
      background(10);
      rect(bd,bd,width-bd,height-bd);
      doneBut.display();
      text("Initials", xDefault, yDefault);
      text("Score", xDefault - xSpacing, yDefault);
      text("Max Combo", xDefault + xSpacing, yDefault);
      int i = 1;
      for(Map.Entry position :board.entrySet()) {  
        //UsersDetails user = position.getValue();
        text(position.getKey().toString(), xDefault - xSpacing, yDefault + (ySpacing*i));
        //text(position.getValue().getName(), xDefault, yDefault + (ySpacing*i));
        //text(position.getValue().getCombo(), xDefault + xSpacing, yDefault + (ySpacing*i));
        ++i;
      }
      if (mousePressed) {
        if (doneBut.pressCheck(mouseX, mouseY)) {
           isShowing = false;
        }
      }
    }
  }
}
