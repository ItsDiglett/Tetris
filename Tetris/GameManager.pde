enum gameState { GAME_START, GAME_SETUP, GAME_PLAYING, GAME_ENDING, GAME_END, GAME_START_MENU, GAME_SETUP_MENU, GAME_PLAYING_MENU, GAME_ENDING_MENU, GAME_END_MENU }

class GameManager {
  Player currUser;
  ScoreManager scoreManager = new ScoreManager();
  ScreenManager menu;
  //Map map = new Map();
  Leaderboard leaderboard = new Leaderboard();
  
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
      case GAME_PLAYING_MENU: currState = gameState.GAME_END; break;
      
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
      
      case GAME_PLAYING: playGameFunc(); break;
      case GAME_PLAYING_MENU: playGame();  break;      
      
      case GAME_END: gameEndFunc(); break;
      case GAME_END_MENU: gameEnd(); break;
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
  
  public void playGameFunc() {
    
    //menu = new PlayGameMenu();
    nextState();
  }
  
  public void playGame() {
    //will have the full game here until lose
    //menu.display();
    nextState();
  }
  
  public void gameEndFunc() {
    //leaderBoard.add(scoreManager.getScore(), currUser.getName);
    menu = new LeaderboardMenu(leaderboard);
    nextState();
  }
  
  public void gameEnd() {
    menu.display();
  }
}
