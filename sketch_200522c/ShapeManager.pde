class ShapeManager{
  ArrayList<Block> blocks;
 
  public ShapeManager(Shapes shape){
       blocks = new Shape(shape).getBlocks();
  }
  
  //We're gonna work on this later <3 aww <3
  //public void moveDown(){
  //   for (Block i: blocks){
  //     i.update(3,0);
    
   
  //  }
  //}
  public void moveDown() {
    shape.moveDown(); 
  }
  
  
}
