void rcMode(String received) {

  //displayCustomChar(action);

  if (received.equals("fwd")) {
    goFwd();
  } else if (received.equals("back")) {
    goBack();
  } else if (received.equals("left")) {
    goLeft();
  } else if (received.equals("right")) {
    goRight();
  } else {
    botStop();
  }
  //  }
}