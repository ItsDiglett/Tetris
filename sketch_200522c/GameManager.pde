enum gameState { GAME_START, GAME_SETUP, GAME_PLAYING, GAME_ENDING, GAME_END }

class GameManager {
  Player currUser;
  //ScoreManager scoreManager = new ScoreManager();
  //Map map = new Map();
  //LeaderBoard leaderBoard = new LeaderBoard();
  
  gameState currState = gameState.GAME_START;
  
  
  public GameManager() {
    
  }
  
  public void runGame() {
    switch (currState) {
      case GAME_START: gameStart(); break;
      case GAME_PLAYING: playGame(); break;
      case GAME_END: gameEnd(); break;
    }
  }
  
  public void gameStart() {
    //starting menu to code later
    //will have button to push to next stage
    
  }
  
  public void  gameSetup() {
    currUser = new Player();
    //scoreManager.resetScore();
    //map.reset();
    
    currState = gameState.GAME_PLAYING;
  }
  
  public void playGame() {
    
  }
  
  public void gameEnding() {
    //leaderBoard.add(scoreManager.getScore(), currUser.getName);
  }
  
  public void gameEnd() {
    //leaderboard.display();
  }
}
