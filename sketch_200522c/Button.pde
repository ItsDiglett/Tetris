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
      if (my >= y && my <= y) {
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
    rect(x,y,w,h);
    text(word,x,y);
    pop();
  }
}
