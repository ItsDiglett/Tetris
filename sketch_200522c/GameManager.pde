enum gameState { GAME_START, GAME_PLAYING, GAME_END }

class GameManager {
  //Player currUser;
  //ScoreManager ScoreManager = new ScoreManager();
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
  
  public void  gameStart() {
    //currUser = new Player();
    //scoreManager.resetScore();
    //map.reset();
  }
  
  public void playGame() {
    
  }
  
  public void gameEnd() {
    
  }  
}
