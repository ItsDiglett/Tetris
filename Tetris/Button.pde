class Button {
  float x,y;
  float w,h;
  
  
  public Button(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
 
  public void display() {
     rect(x,y,w,h);
  }
  public boolean pressCheck(float mx, float my) {
    if (mx >= x && mx <= x+w) {
      if (my >= y && my <= y+h) {
        onPress();
        return true;
      }
    }
    return false;
  }
  //this needs to be overrided for each version of a button
  public void onPress() {} 
}

class GenButton extends Button {
  
  String word;
  
  public GenButton(float x,float y, float w, float h, String word) {
    super(x,y,w,h);
    this.word = word;
  }
  
  @Override
  public void display() {
    push();
    rectMode(CENTER);
    fill(200);
    rect(x,y,w,h);
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(25);
    text(word,x,y);
    pop();
  }
}

class Initial extends Button {
  char initial;
  public Initial(float x, float y, float w, float h, char initial) {
    super(x,y,w,h);
    this.initial = initial;
  }
  @Override
  public void display() {
     rect(x,y,w,h);
     push();
     fill(10);
     textAlign(CENTER, CENTER);
     text(initial,x+w/2,y+h/2);
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
