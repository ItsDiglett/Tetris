class ShapeManager{
  ArrayList<Block> blocks;
<<<<<<< HEAD
 
  public ShapeManager(Shapes shape){
       blocks = new Shape(shape).getBlocks();
=======
  
  public ShapeManager(Shapes shape){
    blocks = new Shape(shape).getBlocks();
        
>>>>>>> 65674f0f777ee77de67f49a1abb383b36ed58eca
  }
  
  //We're gonna work on this later <3 aww <3
<<<<<<< HEAD
  //public void moveDown(){
  //   for (Block i: blocks){
  //     i.update(3,0);
    
   
  //  }
  //}
  public void moveDown() {
    shape.moveDown(); 
=======
  public void moveDown(){
     for (Block i: blocks){
       i.update(0,3);
       
     }
  }
  
  public void moveRight(){
    for (Block i: blocks){
       i.update(3,0);
    }
>>>>>>> 65674f0f777ee77de67f49a1abb383b36ed58eca
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
