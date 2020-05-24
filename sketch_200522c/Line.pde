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
   else if(shape == Shapes.T_SHAPE){
     tCreate();
   }
   else if(shape == Shapes.N_SHAPE){
     nCreate();
   }
   
 }
 public ArrayList<Block> getBlocks(){
   return blocks;
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
 
 public void tCreate(){
   blocks.add(block = new Block(10, 0));
   blocks.add(block = new Block(25,0));
   blocks.add(block = new Block(40,0));
   blocks.add(block = new Block(25,15));
 }
 
 public void nCreate(){
   blocks.add(block = new Block(10,0));
   blocks.add(block = new Block(10,15));
   blocks.add(block = new Block(25,0));
   blocks.add(block = new Block(25,-15));
 }
 


    
 

 

}
