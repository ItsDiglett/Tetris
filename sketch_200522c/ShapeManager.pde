class ShapeManager{
  ArrayList<Block> blocks;

 
  public ShapeManager(Shapes shape){
       blocks = new Shape(shape).getBlocks();

  }
  
  public void moveDown(){
     for (Block i: blocks){
       i.update(0,3);
       
     }
  }
  
  public void moveRight(){
    for (Block i: blocks){
       i.update(3,0);
    }
  }

  
  public void moveLeft(){
     for (Block i: blocks){
       i.update(-3,0);
     }
  }
  
  public void gravity(){
     for(Block i: blocks){
       i.update(0,0.003);
     }
 
  }
  
  public void display(){
   for (Block i: blocks){
       i.display();      
   }   
  }


  
  
}
