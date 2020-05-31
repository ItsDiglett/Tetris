enum gameState { GAME_START, GAME_SETUP, GAME_PLAYING, GAME_ENDING, GAME_END, GAME_START_MENU, GAME_SETUP_MENU, GAME_PLAYING_MENU, GAME_ENDING_MENU, GAME_END_MENU }

class GameManager {
  Player currUser;
  ScoreManager scoreManager = new ScoreManager();
  ScreenManager menu;
  //Map map = new Map();
  //LeaderBoard leaderBoard = new LeaderBoard();
  
  gameState currState = gameState.GAME_START;
  
  
  public GameManager() {
    
  }
  public ScreenManager getScreen() {
    return menu;
  }
  public void setState(gameState newState) {
    currState = newState; 
  }
  
  public void nextState() {
    switch (currState) {
      case GAME_START: currState = gameState.GAME_START_MENU; break;
      case GAME_START_MENU: currState = gameState.GAME_SETUP; break;
      
      case GAME_SETUP: currState = gameState.GAME_SETUP_MENU; break;
      case GAME_SETUP_MENU: currState = gameState.GAME_PLAYING; break;
      
      case GAME_PLAYING: currState = gameState.GAME_PLAYING_MENU; break;
      case GAME_PLAYING_MENU: currState = gameState.GAME_ENDING; break;
      
      case GAME_ENDING: currState = gameState.GAME_ENDING_MENU; break;
      case GAME_ENDING_MENU: currState = gameState.GAME_END; break;
      
      case GAME_END: currState = gameState.GAME_END_MENU; break;
      case GAME_END_MENU: currState = gameState.GAME_START; break;
    }
    println("New game state selected :- " + currState);
  }
  
  public void runGame() {
    switch (currState) {
      case GAME_START: gameStartFunc(); break;
      case GAME_START_MENU: gameStart(); break;
      
      case GAME_SETUP: gameSetupFunc(); break;
      case GAME_SETUP_MENU: gameSetup(); break;
      
      case GAME_PLAYING: playGame(); break;
      case GAME_PLAYING_MENU:  break;
      
      case GAME_ENDING: gameEnding(); break;
      case GAME_ENDING_MENU:  break;
      
      case GAME_END: gameEnd(); break;
      case GAME_END_MENU:  break;
    }
  }
  
  public void gameStartFunc() {
    menu = new StartMenu();
    nextState();
    println("gameStartFunc  Done");
  }
  
  public void gameStart() {
    menu.display();
  }
  
  
  public void  gameSetupFunc() {
    currUser = new Player();
    scoreManager.resetScore();
    //map.reset();
    menu = new SetupMenu();
    
    nextState();
    println("game setup done");
  }
  public void gameSetup() {
    menu.display();
  }
  
  public void playGame() {
    currState = gameState.GAME_ENDING;
    println("play game");
  }
  
  public void gameEnding() {
    //leaderBoard.add(scoreManager.getScore(), currUser.getName);
    currState = gameState.GAME_END;
    println("game ending done");
  }
  
  public void gameEnd() {
    //leaderboard.display();
    currState = gameState.GAME_START;
    println("game end done");
  }
}
