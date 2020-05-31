import java.util.*;

class Leaderboard {
  
  
  TreeMap<Integer,UsersDetails> board = new TreeMap<Integer,UsersDetails>();
  private int displayAmount = 5;
  
  public Leaderboard() {
    board.put(1, new UsersDetails("a", 1));
    board.put(2, new UsersDetails("a", 1));
    board.put(4, new UsersDetails("a", 1));
    board.put(3, new UsersDetails("a", 1));
  }
  public void addToBoard(int score, String name, int combo) {
    if (board.size() < displayAmount) {
      board.put(score,new UsersDetails(name,combo));
    }
  }
  public int getDisplayAmount() {
    return displayAmount;
  }
  public TreeMap<Integer,UsersDetails> getBoard() {
    return board;
  }
}
