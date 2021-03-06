import java.util.Random;

GameManager game;
Shape shape;
ShapeManager shapemanager;
int backgroundColour;

enum Shapes { L_SHAPE, CUBE, STRAIGHT, T_SHAPE, N_SHAPE  }



void setup(){
  Shapes generate = generation();
  game = new GameManager();
  shapemanager = new ShapeManager(generate);
  backgroundColour = 40;
  size(800,800);
  
}

void draw () {
  game.runGame();
  
  
  
  
   //background(100,10,200);
   //shapemanager.display();
   //for (int i = 0; i < 100; ++i){
   //  shapemanager.gravity();
   //}
}

//We can refactor this by returning the key and having a function determine which way to move
void keyPressed(){
  switch (key){
    case 's': shapemanager.moveDown();break;
    case 'a': shapemanager.moveLeft();break;
    case 'd': shapemanager.moveRight();break;
  }
}

public Shapes generation(){
  Random rand = new Random();
  int c = rand.nextInt(6);
  if(c == 1){
    return Shapes.L_SHAPE;
  }
  else if(c == 2){
    return Shapes.CUBE;
  }
  else if(c == 3){
    return Shapes.STRAIGHT;
  }
  else if(c == 4){
    return Shapes.T_SHAPE;
  }
  else{
    return Shapes.N_SHAPE;
  }    
}

void mousePressed() {
  game.getScreen().mousePressed();
}
  

  
