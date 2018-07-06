boolean pin1 = false;boolean pin2 = false;boolean pin3 = false;boolean pin4 = false;boolean pin5 = false;
boolean pin6 = false;boolean pin7 = false;boolean pin8 = false;boolean pin9 = false;boolean pin10 = false;
boolean pin11 = false;boolean pin12 = false;boolean pin13 = false;

PShape ellipse0;PShape ellipse1;PShape ellipse2;PShape ellipse3;PShape ellipse4;PShape ellipse5;PShape ellipse6;
PShape ellipse7;PShape ellipse8;PShape ellipse9;PShape ellipse10;PShape ellipse11;PShape ellipse12;PShape ellipse13;

PShape ellipseA0;PShape ellipseA1;PShape ellipseA2;PShape ellipseA3;PShape ellipseA4;PShape ellipseA5;

PImage img;  // Declare a variable of type PImage
import processing.serial.*;

// The serial port:
Serial myPort;



void setup() {
  
  ellipse13 = createShape(ELLIPSE,490, 319, 18, 18 );
  ellipse12 = createShape(ELLIPSE,512, 319, 18, 18 );
  ellipse11 = createShape(ELLIPSE,532, 319, 18, 18 );
  ellipse10 = createShape(ELLIPSE,552, 319, 18, 18 );
  ellipse9 = createShape(ELLIPSE,574, 319, 18, 18 );
  ellipse8 = createShape(ELLIPSE,594, 319, 18, 18 );
  ellipse7 = createShape(ELLIPSE,630, 319, 18, 18 );
  ellipse6 = createShape(ELLIPSE,650, 319, 18, 18 );
  ellipse5 = createShape(ELLIPSE,672, 319, 18, 18 );
  ellipse4 = createShape(ELLIPSE,692, 319, 18, 18 );
  ellipse3 = createShape(ELLIPSE,714, 319, 18, 18 );
  ellipse2 = createShape(ELLIPSE,734, 319, 18, 18 );
  ellipse1 = createShape(ELLIPSE,756, 319, 18, 18 );
  ellipse0 = createShape(ELLIPSE,776, 319, 18, 18 );
  
  ellipseA0 = createShape(ELLIPSE,672, 720, 18, 18 );
  ellipseA1 = createShape(ELLIPSE,692, 720, 18, 18 );
  ellipseA2 = createShape(ELLIPSE,714, 720, 18, 18 );
  ellipseA3 = createShape(ELLIPSE,734, 720, 18, 18 );
  ellipseA4 = createShape(ELLIPSE,755, 720, 18, 18 );
  ellipseA5 = createShape(ELLIPSE,776, 720, 18, 18 );
  
  
  
  // List all the available serial ports:
printArray(Serial.list());

// Open the port you are using at the rate you want:
myPort = new Serial(this, Serial.list()[2], 9600);

// Send a capital "A" out the serial port

  size(1000,1000);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("arduino.jpg");
  
  
}

void draw() {
 
  background(0);
  // Draw the image to the screen at coordinate (0,0)
  image(img,200,300);
  
  
  
  if(mousePressed && mouseX > 480 && mouseX < 500 && mouseY > 309 && mouseY < 329){
     myPort.write(1);
    delay(200);
    pin13 = !pin13;
  }
  
  
  if(pin13){
   
     ellipse13.setFill(color(0,255,0));
   shape(ellipse13);
  }
  else{
     ellipse13.setFill(color(255,0,0));
   shape(ellipse13);
   
  }
 
  if(mousePressed && mouseX > 502 && mouseX < 522 && mouseY > 309 && mouseY < 329){
     myPort.write(2);
    delay(100);
    pin12 = !pin12;
  }
 
 
 if(pin12){
   
     ellipse12.setFill(color(0,255,0));
   shape(ellipse12);
  }
  else{
     ellipse12.setFill(color(255,0,0));
   shape(ellipse12);
   
  }
  
  ellipse11.setFill(color(255,0,0));
  shape(ellipse11);
  ellipse10.setFill(color(255,0,0));
   shape(ellipse10);
   ellipse9.setFill(color(255,0,0));
    ellipse9.setStrokeWeight(2);
  ellipse9.setStroke(color(255));
   shape(ellipse9);
   ellipse8.setFill(color(255,0,0));
   shape(ellipse8);
   ellipse7.setFill(color(255,0,0));
   shape(ellipse7);
   ellipse6.setFill(color(255,0,0));
   shape(ellipse6);
   ellipse5.setFill(color(255,0,0));
   shape(ellipse5);
   ellipse4.setFill(color(255,0,0));
   shape(ellipse4);
   ellipse3.setFill(color(255,0,0));
   shape(ellipse3);
   
   
   ellipseA0.setFill(color(120,0,200));
   shape(ellipseA0);
    ellipseA1.setFill(color(120,0,200));
   shape(ellipseA1);
    ellipseA2.setFill(color(120,0,200));
   shape(ellipseA2);
    ellipseA3.setFill(color(120,0,200));
   shape(ellipseA3);
    ellipseA4.setFill(color(120,0,200));
   shape(ellipseA4);
    ellipseA5.setFill(color(120,0,200));
   shape(ellipseA5);
  
  if (myPort.available() >0) {
   int inByte = myPort.read();
   
    if (inByte == 0 ){
      ellipse2.setFill(color(255,128,0));
     shape(ellipse2);
    
    }
    else if(inByte == 1){
       ellipse2.setFill(color(0,255,0));
     shape(ellipse2);
      
    }
    else {
      println(inByte);
    }
   myPort.clear();
   delay(50);
  }
  
  textSize(36);
  text("ממשק שליטה בארדואינו", 320, 200); 
  fill(0, 102, 153);
  
}