Shape shape;
enum Shapes { L_SHAPE, CUBE, STRAIGHT  }

void setup(){
  shape = new Shape(Shapes.L_SHAPE);
  size(200,400);
 
}

void draw () {
   background(100,10,200);
   shape.display();
   
}

//We can refactor this by returning the key and having a function determine which way to move
void keyPressed(){
  switch (key){
    case 's': shape.moveDown();break;
    case 'a': shape.moveLeft();break;
    case 'd': shape.moveRight();break;
  }

  }
