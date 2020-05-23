Shape shape;
ShapeManager shapemanager;
import java.util.Random;

enum Shapes { L_SHAPE, CUBE, STRAIGHT  }



void setup(){
  shapemanager = new ShapeManager(Shapes.L_SHAPE);
  size(200,4005);
 
}

void draw () {
   background(100,10,200);
   shapemanager.display();
   for (int i = 0; i < 100; ++i){
     shapemanager.gravity();
   }
     
}

//We can refactor this by returning the key and having a function determine which way to move
void keyPressed(){
  switch (key){
    case 's': shapemanager.moveDown();break;
    case 'a': shapemanager.moveLeft();break;
    case 'd': shapemanager.moveRight();break;
  }

  }

  
