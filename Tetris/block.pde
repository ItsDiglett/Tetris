class Block {
  private float x;
  private float y;
  private float size = 15;
 
  
  public Block(float x, float y){
      this.x = x;
      this.y = y;
  }
  
   public void update(float x, float y){
     this.x += x;
     this.y += y;
    
  }

  public void display(){
    square(x, y , size);
  }
}
