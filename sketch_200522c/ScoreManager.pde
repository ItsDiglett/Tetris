class ScoreManager {
  private int score = 0;
  private int combo = 0;
  private int maxCombo = 1;
  private int baseIncrease = 10;
  
  public ScoreManager() {
    
  }
  public int getScore() {
    return score;
  }
  public int getMaxCombo() {
    return score;
  }
  public void shapeLocked(int linesBroken) {
    if (linesBroken > 0) {
      ++combo;
      maxCombo = max(maxCombo, combo);
      score += baseIncrease * maxCombo; 
      
    } else {
      combo = 0;
    }
  }
  public void resetScore() {
    score = 0;
    combo = 0;
    maxCombo = 1;
  }
  
}
