//Include controlP5 and serial communication libraries
import controlP5.*;
import processing.serial.*;

//Deine serial port for serial communication with arduino
Serial myPort;
String receivedData = "";


//
boolean fwd, back, left, right;


void setup() {
  size(1280, 832);
  println(Serial.list()); // List all available serial ports

  // Select the correct port for your Arduino Nano 33 BLE Sense
  myPort = new Serial(this, Serial.list()[3], 9600); // Change index [0] to the port your device uses

  //define control panels, code in the respective tab
  defineControlPanels();

  //define images, code in the respective tab
  defineImages();

  //display default image
  displayImage(img1);
  
  //set default arduino mode to "default"
  sendCommand("moddefault");
}

void draw() {
}


//Receive echo data from arduino
void serialEvent(Serial myPort) {
  receivedData = myPort.readStringUntil('\n'); // Read data from Arduino
  if (receivedData != null) {
    //println("Received: " + receivedData.trim());
  }
}

//Test function to find screen coordinates and align cp5 button to screenshots
void mouseReleased() {
   //println("X : " + mouseX);
   //println("X : " + mouseY);
}
