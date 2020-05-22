Block block;

class Shape{
 ArrayList<Block> blocks = new ArrayList<Block>();
 private float x;
 private float y;


 public Shape(Shapes shape){
   
   if(shape == Shapes.STRAIGHT){
        straightCreate();
     }
   else if(shape == Shapes.L_SHAPE){
       lCreate();     
   }
   else if(shape == Shapes.CUBE){
     cubeCreate();
   }
   
 }
  
     
 public void display(){
   for (Block i: blocks){
       i.display();      
   }   
 }
 //These are the moving functions I'm sorry in advance for the spaghetti <3
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
  
 public void straightCreate(){
    blocks.add(block = new Block(10,0));
    blocks.add(block = new Block(25,0));
    blocks.add(block = new Block(40,0));
    blocks.add(block = new Block(55,0));
    
 }
 
 public void lCreate(){
    blocks.add(block = new Block(10,0));
    blocks.add(block = new Block(25,0));
    blocks.add(block = new Block(40,0));
    blocks.add(block = new Block(40,15));
}

 public void cubeCreate(){
    blocks.add(block = new Block(10,0));
    blocks.add(block = new Block(25,0)); 
    blocks.add(block = new Block(10,15));
    blocks.add(block = new Block(25,15));
 }
 


    
 }
 

 

 
