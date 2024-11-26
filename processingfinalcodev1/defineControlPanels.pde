//Declaring cp5 control panel
ControlP5 cp5;

//Declatring button colors
color orangebuttonbackgroundcolor = color(234, 88, 11);
color orangebuttonforegroundcolor = color(214, 73, 11);
color whitebuttonbackgroundcolor = color(255, 255, 255);
color whitebuttonforegroundcolor = color(200, 200, 200);

void defineControlPanels() {

  cp5 = new ControlP5(this);

  Group panel = cp5.addGroup("mainPanel")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    ;

  // Panel Comment
  Group panel1 = cp5.addGroup("panel1")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .moveTo(panel)
    //  .hide()
    ;


  cp5.addButton("next1")
    .setPosition(402, 664)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Let's Go!")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel1)
    .onClick(e -> switchPanel(img2, "panel1", "panel2"))
    ;

  // Panel Comment
  Group panel2 = cp5.addGroup("panel2")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .moveTo(panel)
    .hide()
    ;

  PImage[] images = new PImage[3];

  images[0] = loadImage("screens/2.jpg");
  images[1] = loadImage("screens/2.1.jpg");
  images[2] = loadImage("screens/2.2.jpg");

  cp5.addButton("switchbotcolor")
    .setPosition(674, 240)
    .setSize(470, 35)
    .setValue(0)
    .setLabel("Surprise Me!")
    .setColorBackground(color(255, 255, 255))
    .setColorForeground(color(200, 200, 200))
    .activateBy(ControlP5.PRESS)
    .moveTo(panel2)
    .onClick(e -> displayImage(images[int(random(images.length))]))
    .getCaptionLabel()
    .setColor(color(0, 0, 0))
    ;


  cp5.addButton("next2")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Place Order")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel2)
    .onClick(e -> switchPanel(img3, "panel2", "panel3"))

    ;

  // Panel Comment
  Group panel3 = cp5.addGroup("panel3")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next3")
    .setPosition(402, 664)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Scan QR Code")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel3)
    .onClick(e -> {
    switchPanel(img4, "panel3", "panel4");
    sendCommand("modactive");
  }
  )
  ;

  // Panel Comment
  Group panel4 = cp5.addGroup("panel4")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next4")
    .setPosition(402, 664)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Let's Go!")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel4)
    .onClick(e -> switchPanel(img5, "panel4", "panel5"))
    ;

  // Panel Comment
  Group panel5 = cp5.addGroup("panel5")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next5")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel5)
    .onClick(e -> switchPanel(img5_1, "panel5", "panel5_1"))
    ;

  // Panel Comment
  Group panel5_1 = cp5.addGroup("panel5_1")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next5_1")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel5_1)
    .onClick(e -> switchPanel(img5_2, "panel5_1", "panel5_2"))
    ;

  // Panel Comment
  Group panel5_2 = cp5.addGroup("panel5_2")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next5_2")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel5_2)
    .onClick(e -> switchPanel(img5_3, "panel5_2", "panel5_3"))
    ;

  // Panel Comment
  Group panel5_3 = cp5.addGroup("panel5_3")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next5_3")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel5_3)
    .onClick(e -> switchPanel(img5_4, "panel5_3", "panel5_4"))
    ;

  // Panel Comment
  Group panel5_4 = cp5.addGroup("panel5_4")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next5_4")
    .setPosition(674, 654) //Need to change position
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel5_4)
    .onClick(e -> {
    switchPanel(img5_5, "panel5_4", "panel5_5");
    sendCommand("modaction");
  }
  )
  ;

  // Panel Comment
  Group panel5_5 = cp5.addGroup("panel5_5")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next5_5")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel5_5)
    .onClick(e -> switchPanel(img6, "panel5_5", "panel6"))
    ;

  // Panel Comment
  Group panel6 = cp5.addGroup("panel6")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next6")
    .setPosition(179, 740)
    .setSize(40, 40)
    .setValue(0)
    .setLabel("A1")
    .setColorBackground(whitebuttonbackgroundcolor)
    .setColorForeground(whitebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel6)
    .onClick(e -> switchPanel(img7, "panel6", "panel7"))
    .getCaptionLabel()
    .setColor(color(0, 0, 0))
    .setSize(25);
  ;


  // Panel Comment
  Group panel7 = cp5.addGroup("panel7")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next7")
    .setPosition(913, 658)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Start Challenge")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel7)
    .onClick(e -> {
    switchPanel(img8, "panel7", "panel8");
    sendCommand("modrc");
  }
  )
  ;



  // Panel Comment
  Group panel8 = cp5.addGroup("panel8")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("up")
    .setPosition(360, 220)
    .setSize(100, 100)
    .setValue(0)
    .setLabel("^")
    .setColorBackground(color(28, 78, 216))
    .setColorForeground(color(28, 78, 196))
    .activateBy(ControlP5.PRESS)
    .moveTo(panel8)
    .onPress(new CallbackListener() {
    public void controlEvent(CallbackEvent event) {
      sendCommand("fwd");
    }
  }
  )
  .onRelease(new CallbackListener() {
    public void controlEvent(CallbackEvent event) {
      sendCommand("stop");
    }
  }
  )
  .getCaptionLabel()
    .setColor(color(255, 255, 255))
    .setSize(50);
  ;

  cp5.addButton("down")
    .setPosition(360, 520)
    .setSize(100, 100)
    .setValue(0)
    .setLabel("v")
    .setColorBackground(color(132, 204, 21))
    .setColorForeground(color(132, 184, 21))
    .activateBy(ControlP5.PRESS)
    .moveTo(panel8)
    .onPress(new CallbackListener() {
    public void controlEvent(CallbackEvent event) {
      sendCommand("back");
    }
  }
  )
  .onRelease(new CallbackListener() {
    public void controlEvent(CallbackEvent event) {
      sendCommand("stop");
    }
  }
  )
  .getCaptionLabel()
    .setColor(color(255, 255, 255))
    .setSize(40);
  ;

  cp5.addButton("left")
    .setPosition(210, 360)
    .setSize(100, 100)
    .setValue(0)
    .setLabel("<")
    .setColorBackground(color(233, 180, 10))
    .setColorForeground(color(213, 180, 10))
    .activateBy(ControlP5.PRESS)
    .moveTo(panel8)
    .onPress(new CallbackListener() {
    public void controlEvent(CallbackEvent event) {
      sendCommand("left");
    }
  }
  )
  .onRelease(new CallbackListener() {
    public void controlEvent(CallbackEvent event) {
      sendCommand("stop");
    }
  }
  )
  .getCaptionLabel()
    .setColor(color(255, 255, 255))
    .setSize(50);
  ;

  cp5.addButton("right")
    .setPosition(510, 370)
    .setSize(100, 100)
    .setValue(0)
    .setLabel(">")
    .setColorBackground(color(220, 38, 37))
    .setColorForeground(color(200, 38, 37))
    .activateBy(ControlP5.PRESS)
    .moveTo(panel8)
    .onPress(new CallbackListener() {
    public void controlEvent(CallbackEvent event) {
      sendCommand("right");
    }
  }
  )
  .onRelease(new CallbackListener() {
    public void controlEvent(CallbackEvent event) {
      sendCommand("stop");
    }
  }
  )
  .getCaptionLabel()
    .setColor(color(255, 255, 255))
    .setSize(50);
  ;


  cp5.addButton("next8")
    .setPosition(913, 658)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Finish Challenge!")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel8)
    .onClick(e -> switchPanel(img9, "panel8", "panel9"))
    ;

  // Panel Comment
  Group panel9 = cp5.addGroup("panel9")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next9")
    .setPosition(475, 395)
    .setSize(40, 40)
    .setValue(0)
    .setLabel("B1")
    .setColorBackground(whitebuttonbackgroundcolor)
    .setColorForeground(whitebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel9)
    .onClick(e -> switchPanel(img10, "panel9", "panel10"))
    .getCaptionLabel()
    .setColor(color(0, 0, 0))
    .setSize(25);
  ;

  // Panel Comment
  Group panel10 = cp5.addGroup("panel10")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next10")
    .setPosition(913, 658)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Start Challenge!")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel10)
    .onClick(e -> switchPanel(img11, "panel10", "panel11"))

    ;

  // Panel Comment
  Group panel11 = cp5.addGroup("panel11")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("run11")
    .setPosition(652, 721)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Run")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel11)
    .onClick(e -> {
    sendCommand("modfarm");
  }
  )

  ;

  cp5.addButton("next11")
    .setPosition(975, 721)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Finish Challenge")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel11)
    .onClick(e -> {
    switchPanel(img12, "panel11", "panel12");
  }
  )

  ;

  // Panel Comment
  Group panel12 = cp5.addGroup("panel12")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next12")
    .setPosition(900, 525)
    .setSize(40, 40)
    .setValue(0)
    .setLabel("C1")
    .setColorBackground(whitebuttonbackgroundcolor)
    .setColorForeground(whitebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel12)
    .onClick(e -> switchPanel(img13_1, "panel12", "panel13_1"))
    .getCaptionLabel()
    .setColor(color(0, 0, 0))
    .setSize(25);
  ;

  // Panel Comment
  Group panel13_1 = cp5.addGroup("panel13_1")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next13_1")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel13_1)
    .onClick(e -> switchPanel(img13_2, "panel13_1", "panel13_2"))
    ;

  // Panel Comment
  Group panel13_2 = cp5.addGroup("panel13_2")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next13_2")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel13_2)
    .onClick(e -> switchPanel(img13_3, "panel13_2", "panel13_3"))
    ;

  // Panel Comment
  Group panel13_3 = cp5.addGroup("panel13_3")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next13_3")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel13_3)
    .onClick(e -> switchPanel(img13_4, "panel13_3", "panel13_4"))
    ;

  // Panel Comment
  Group panel13_4 = cp5.addGroup("panel13_4")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next13_4")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel13_4)
    .onClick(e -> switchPanel(img13_5, "panel13_4", "panel13_5"))
    ;

  // Panel Comment
  Group panel13_5 = cp5.addGroup("panel13_5")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next13_5")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel13_5)
    .onClick(e -> switchPanel(img14, "panel13_5", "panel14"))
    ;

  // Panel Comment
  Group panel14 = cp5.addGroup("panel14")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next14")
    .setPosition(913, 658)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Start Challenge")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel14)
    .onClick(e -> switchPanel(img15, "panel14", "panel15"))
    ;

  // Panel Comment
  Group panel15 = cp5.addGroup("panel15")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("run15")
    .setPosition(652, 721)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Run")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel15)
    .onClick(e -> {

    sendCommand("modsanta");
  }
  )
  ;

  cp5.addButton("next15")
    .setPosition(975, 721)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Finish Challenge!")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel15)
    .onClick(e -> {
    switchPanel(img16, "panel15", "panel16");
    sendCommand("modrc");
  }
  )
  ;

  // Panel Comment
  Group panel16 = cp5.addGroup("panel16")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next16")
    .setPosition(1180, 117)
    .setSize(40, 40)
    .setValue(0)
    .setLabel("D1")
    .setColorBackground(whitebuttonbackgroundcolor)
    .setColorForeground(whitebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel16)
    .onClick(e -> switchPanel(img17_1, "panel16", "panel17_1"))
    .getCaptionLabel()
    .setColor(color(0, 0, 0))
    .setSize(25);
  ;

  // Panel Comment
  Group panel17_1 = cp5.addGroup("panel17_1")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next17_1")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel17_1)
    .onClick(e -> switchPanel(img17_2, "panel17_1", "panel17_2"))
    ;

  // Panel Comment
  Group panel17_2 = cp5.addGroup("panel17_2")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next17_2")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel17_2)
    .onClick(e -> switchPanel(img17_3, "panel17_2", "panel17_3"))
    ;

  // Panel Comment
  Group panel17_3 = cp5.addGroup("panel17_3")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next17_3")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel17_3)
    .onClick(e -> switchPanel(img13_4, "panel17_3", "panel17_4"))
    ;

  // Panel Comment
  Group panel17_4 = cp5.addGroup("panel17_4")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next17_4")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel17_4)
    .onClick(e -> switchPanel(img17_5, "panel17_4", "panel17_5"))
    ;

  // Panel Comment
  Group panel17_5 = cp5.addGroup("panel17_5")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next17_5")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel17_5)
    .onClick(e -> switchPanel(img17_6, "panel17_5", "panel17_6"))
    ;

  // Panel Comment
  Group panel17_6 = cp5.addGroup("panel17_6")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next17_6")
    .setPosition(674, 654)
    .setSize(470, 40)
    .setValue(0)
    .setLabel("Next")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel17_6)
    .onClick(e -> switchPanel(img18, "panel17_6", "panel18"))
    ;

  // Panel Comment
  Group panel18 = cp5.addGroup("panel18")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next18")
    .setPosition(913, 658)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Start Challenge")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel18)
    .onClick(e -> switchPanel(img19, "panel18", "panel19"))
    ;


  // Panel Comment
  Group panel19 = cp5.addGroup("panel19")
    .setPosition(0, 0)
    .setSize(1280, 832)
    .setBackgroundColor(color(200, 200, 200, 0))
    .hide();
  ;


  cp5.addButton("next19")
    .setPosition(652, 721)
    .setSize(240, 40)
    .setValue(0)
    .setLabel("Run")
    .setColorBackground(orangebuttonbackgroundcolor)
    .setColorForeground(orangebuttonforegroundcolor)
    .activateBy(ControlP5.PRESS)
    .moveTo(panel19)
    .onClick(e -> switchPanel(img1, "panel19", "panel1"))
    ;
}


void switchPanel(PImage img, String showPanel, String hidePanel) {
  displayImage(img);
  cp5.getGroup(showPanel).hide();
  cp5.getGroup(hidePanel).show();
}



void sendCommand (String command) {

  println(command);
  myPort.write(command + "\n"); // Send data to Arduino
}


public void controlEvent(ControlEvent theEvent) {
  //Is called whenever a GUI Event happened
}
