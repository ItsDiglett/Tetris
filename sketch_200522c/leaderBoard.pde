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
  
  HashMap<Integer,UsersDetails> board = new HashMap<Integer,UsersDetails>();
  int displayAmount = 10;
  
  public LeaderBoard() {
    
  }
  public void addToBoard(int score, String name, int combo) {
    if (board.size() < displayAmount) {
      board.put(score,new UsersDetails(name,combo));
    }
  }
  public void display() {
    //bd is boarder distance
    
    boolean isShowing = true;
    
    while (isShowing) {
      int bd = 10;
      int xSpacing = 100;
      int ySpacing;
      ySpacing = (height + bd*2)/displayAmount;
      
      push();
      textMode(CENTER);
      background(10);
      rect(bd,bd,width-bd,height-bd);
      text
    }
  }
}
