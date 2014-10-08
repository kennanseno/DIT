boolean[] bytes = new boolean[16];
int centX, centY,posX,posY,cellWidth,loop;

// Probably need to declare some more variables here


void setup()
{
  size(500, 500);
  centX = width / 2;
  centY = height / 2;  
  posX = 10;
  posY = 400;
  cellWidth = 30;
  
  
  // And set their values here
}


void draw()
{
  posX = 10;
  background(0);
  stroke(127);

  // Do some stuff here
  
  //test the boolean array
 // bytes[15] = true;
  
  
  for(loop = 0; loop < bytes.length; loop++){
    if(bytes[loop] == true){
      fill(0);
    }
    else{
      fill(255);
    }
    rect(posX,posY,cellWidth,cellWidth);
    posX+= cellWidth;
  }
  
  int number = binaryToDecimal(bytes);
  // This is how you print text in Processing
  fill(0,255,0);
  textAlign(CENTER,TOP);
  textSize(15);
  text(number, centX, 100);
}
 
int binaryToDecimal(boolean[] bytes)
{
  int ret = 0;

  // Implement this method
  for(int i = 0; i < bytes.length; i++){
    if(bytes[i] == true){
      ret += pow(2,(bytes.length - 1) - i);
    }
  }

  return ret;
}

void mousePressed()
{
  // Put some code here too
  // To toggle the bit on or off based on the mouse position.
    posX = 10;

    for(loop = 0; loop < bytes.length; loop++){
      if(mouseX >= (cellWidth*loop)+10 && mouseX <= (cellWidth*(loop+1))+10 && mouseY >= posY && mouseY <= posY+cellWidth){
        if(bytes[loop] == false){
          bytes[loop] = !bytes[loop];
        }else{
          bytes[loop] = !bytes[loop];
        }         
      }
      posX = posX+cellWidth;
    }
}