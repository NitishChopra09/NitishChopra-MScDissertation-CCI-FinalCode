// 8x8 LED Panels
#define HARDWARE_TYPE MD_MAX72XX::FC16_HW
#define MAX_DEVICES 2
#define CS_PIN 10
MD_Parola myDisplay = MD_Parola(HARDWARE_TYPE, CS_PIN, MAX_DEVICES);

void initializeLED() {

  // Intialize the LED Panels
  myDisplay.begin();
  //myDisplay.setIntensity(5);
  myDisplay.displayClear();

  //Access max7219 object inside mdparola object
  MD_MAX72XX *mx = myDisplay.getGraphicObject();
}

void displayCustomChar(uint16_t cusChar[]) {

  myDisplay.getGraphicObject()->clear();  // Clear previous display

  for (int row = 0; row < 8; row++) {
    for (int col = 0; col < 16; col++) {
      // Set each LED in the matrix based on the bitmap
      bool pixelOn = bitRead(cusChar[row], col);
      myDisplay.getGraphicObject()->setPoint(row, col, pixelOn);
    }
  }

}

uint16_t neutral_down[8] = {
  0b0000000000000000,
  0b0000000000000000,
  0b0000000000000000,
  0b0011110000111100,
  0b0000000000000000,
  0b0000000000000000,
  0b0000000000000000,
  0b0000000110000000
};

uint16_t neutral_up[8] = {
  0b0000000000000000,
  0b0000000000000000,
  0b0011110000111100,
  0b0000000000000000,
  0b0000000000000000,
  0b0000000000000000,
  0b0000000110000000,
  0b0000000000000000
};

uint16_t active[8] = {
  0b0000000000000000,
  0b0001100000011000,
  0b0011110000111100,
  0b0001100000011000,
  0b0000000000000000,
  0b0000001001000000,
  0b0000000110000000,
  0b0000000000000000
};

uint16_t action[8] = {
  0b0000000000000000,
  0b0010000000000100,
  0b0001010000101000,
  0b0000100000010000,
  0b0000000000000000,
  0b0000001111000000,
  0b0000001111000000,
  0b0000000000000000
};

uint16_t fwd[8] = {
  0b0000000000000000,
  0b0000100000010000,
  0b0001010000101000,
  0b0010001001000100,
  0b0000000000000000,
  0b0000001111000000,
  0b0000001111000000,
  0b0000000000000000
};

uint16_t back[8] = {
  0b0000000000000000,
  0b0000000000000000,
  0b0010000000000100,
  0b0001010000101000,
  0b0000100000010000,
  0b0000001111000000,
  0b0000001111000000,
  0b0000000000000000
};

uint16_t left[8] = {
  0b0000000000000000,
  0b0001000000100000,
  0b0000100000010000,
  0b0001000000100000,
  0b0000000000000000,
  0b0000001111000000,
  0b0000001111000000,
  0b0000000000000000
};

uint16_t right[8] = {
  0b0000000000000000,
  0b0000100000010000,
  0b0001000000100000,
  0b0000100000010000,
  0b0000000000000000,
  0b0000001111000000,
  0b0000001111000000,
  0b0000000000000000
};