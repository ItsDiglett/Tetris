GameManager game;
Shape shape;
enum Shapes { L_SHAPE, CUBE, STRAIGHT  }


void setup(){
  shape = new Shape(Shapes.STRAIGHT);
  size(800,800);
  game = new GameManager();
}

void draw () {
   background(100,10,200);
   shape.display();
   for(float i = 0; i < 400; ++i){
     shape.gravity();
   }
     
}

//We can refactor this by returning the key and having a function determine which way to move
void keyPressed(){
  switch (key){
    case 's': shape.moveDown();break;
    case 'a': shape.moveLeft();break;
    case 'd': shape.moveRight();break;
  }
}
