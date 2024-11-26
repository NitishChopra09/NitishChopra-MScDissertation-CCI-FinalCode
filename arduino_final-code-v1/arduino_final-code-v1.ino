// Including the required Arduino libraries
#include <MD_Parola.h>
#include <MD_MAX72xx.h>
#include <SPI.h>

//Mode state
String mode = "default";
String received;

void setup() {
  Serial.begin(9600);
  while (!Serial)
    ;
  Serial.println("Arduino is ready!");

  initializeLED();

  initializeMotors();

  initializeSensors();
}

void loop() {


  if (Serial.available() > 0) {

    received = Serial.readStringUntil('\n');

    if (received.substring(0, 3).equals("mod")) { mode = received.substring(3); }
  }

  modeCheck(mode);

}


void modeCheck(String mode) {

  if (mode.equals("default")) {
    defaultMode();
  } else if (mode.equals("active")) {
    activeMode();
  } else if (mode.equals("action")) {
    actionMode();
  } else if (mode.equals("rc")) {
    rcMode(received);
  } else if (mode.equals("farm")) {
    farmMode();
  } else if (mode.equals("santa")) {
    santaMode();
  } else {
    defaultMode();
  }
}

void checkStringReceived() {
}
