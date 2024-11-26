void santaMode() {

  //displayCustomChar(active);

  int IRstate1 = digitalRead(A7);
  int IRstate2 = digitalRead(A1);
  int IRstate3 = digitalRead(A3);
  int IRstate4 = digitalRead(A1);

  if (IRstate1 == LOW && IRstate2 == HIGH) {
    goRight();
  } else if (IRstate1 == HIGH && IRstate2 == LOW) {
    goLeft();
  } else if (IRstate1 == LOW && IRstate2 == LOW) {
    goFwd();
  } else {
    botStop();
  }
}