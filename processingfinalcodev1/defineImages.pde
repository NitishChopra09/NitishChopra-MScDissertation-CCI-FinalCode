//Declaring variables for UIimages
PImage 
img1, 
img2,
img2_1,
img2_2,
img3, 
img4, 
img5, 
img5_1, 
img5_2,
img5_3,
img5_4,
img5_5,
img6,
img7,
img8,
img9,
img10,
img11,
img12,
img13_1,
img13_2,
img13_3,
img13_4,
img13_5,
img14,
img15,
img16,
img17_1,
img17_2,
img17_3,
img17_4,
img17_5,
img17_6,
img18,
img19
;

void defineImages() {
  img1 = loadImage("screens/1.jpg");
  img2 = loadImage("screens/2.jpg");
  img2_1 = loadImage("screens/2.1.jpg");
  img2_2 = loadImage("screens/2.2.jpg");
  img3 = loadImage("screens/3.jpg");
  img4 = loadImage("screens/4.jpg");
  img5 = loadImage("screens/5.0.jpg");
  img5_1 = loadImage("screens/5.1.jpg");
  img5_2 = loadImage("screens/5.2.jpg");
  img5_3 = loadImage("screens/5.3.jpg");
  img5_4 = loadImage("screens/5.4.jpg");
  img5_5 = loadImage("screens/5.5.jpg");
  img6 = loadImage("screens/6.jpg");
  img7 = loadImage("screens/7.jpg");
  img8 = loadImage("screens/8.jpg");
  img9 = loadImage("screens/9.jpg");
  img10 = loadImage("screens/10.jpg");
  img11 = loadImage("screens/11.jpg");
  img12 = loadImage("screens/12.jpg");
  img13_1 = loadImage("screens/13.1.jpg");
  img13_2 = loadImage("screens/13.2.jpg");
  img13_3 = loadImage("screens/13.3.jpg");
  img13_4 = loadImage("screens/13.4.jpg");
  img13_5 = loadImage("screens/13.5.jpg");
  img14 = loadImage("screens/14.jpg");
  img15 = loadImage("screens/15.jpg");
  img16 = loadImage("screens/16.jpg");
  img17_1 = loadImage("screens/17.1.jpg");
  img17_2 = loadImage("screens/17.2.jpg");
  img17_3 = loadImage("screens/17.3.jpg");
  img17_4 = loadImage("screens/17.4.jpg");
  img17_5 = loadImage("screens/17.5.jpg");
  img17_6 = loadImage("screens/17.6.jpg");
  img18 = loadImage("screens/18.jpg");
  img19 = loadImage("screens/19.jpg");
}

void displayImage(PImage img) {
  image(img, 0, 0, 1280, 832);
}

void hideImage(PImage img) {
  image(img, 0, 0, 1280, 832);
}
