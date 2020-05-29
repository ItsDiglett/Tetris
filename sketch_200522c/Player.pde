class Player {
  String name = "";
  
  public Player() {
    name = inputInitials();
  }
  
  public String inputInitials() {
    class Initials extends Button {
      char initial;
      public Initials(float x, float y, float w, float h, char initial) {
        super(x,y,w,h);
        this.initial = initial;
      }
      @Override
      public void display() {
         rect(x,y,w,h);
         push();
         fill(10);
         text(initial,x,y);
         pop();
      }
      @Override
      public void onPress() {
        toggleChar();
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
    
    ArrayList<Initials> letters = new ArrayList<Initials>();
    Button doneBut = new GenButton(width/2, height/2,120,60,"Done");
    
    int wid = 60;
    int hei = 80;
    int inputX = height/2 - wid/2;
    int inputY = width/2 - hei/2;
    int spacing = 20;
    
    inputX -= wid + spacing;
    for (int i = 0; i < 3; ++i) {
      letters.add(new Initials(inputX, inputY, wid, hei, 'a'));
      inputX += wid + spacing;
    }
    
    String inits = "";
    boolean isSelecting = true;
    //loop for selecting initials
    print("while loop starting");
    while(isSelecting) {
      background(50);
      for (Initials i: letters) {
        i.display();
      }
      doneBut.display();
      if (mousePressed) {
        //if done button is pressed should stop the loop and set the return value equal to the inputs
        if (doneBut.pressCheck(mouseX, mouseY)) {
          for (Initials i: letters) {
            inits += i.initial;
            isSelecting = false;
          }
        } else {
          // will toggle through the letters when pressed
          for (Initials i: letters) {
            i.pressCheck(mouseX, mouseY);
          }
        }
      }
    }
    print("while loop ended");
    return inits;
  }
}
