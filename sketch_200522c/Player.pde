class Player {
  String name = "";
  int MaxCombo = 0;
  
  public Player() {
    name = inputName();
  }
  
  public String inputName() {
    return "";
  }
  public String inputInitals() {
    //class to display initials to users so they can choose them
    class Initial {
      float x,y;
      float w,h;
      char initial;
      
      public Initial(float x, float y, char initial) {
        this.x = x;
        this.y = y;
        w = 60;
        h = 80;
        this.initial = initial;
      }
      
      public void display() {
         rect(x,y,w,h);
         push();
         fill(10);
         text(initial,x,y);
         pop();
      }
      //should be called when clicked on to toggle through letters
      public void toggleChar() {
        switch (initial) {
          case 'a': this.initial = 'b'; break;
          case 'b': this.initial = 'c'; break;
          case 'c': this.initial = 'd'; break;
          case 'd': this.initial = 'e'; break;
          case 'e': this.initial = 'a'; break;
        }
      }
    }
    //end of inner class start of function
    //boolean isSelecting = true;
    //background(50);
    //while(isSelecting) {
      
    //}
    return "";
  }
  
}
