void naStart()
{
  background(rb, gb, bb); //nadawanie tla
  noFill();
  strokeWeight(2);
  stroke(0);
  line(0, height-roznica-1, width-1, height-roznica-1);
}


void rysujPunkty()      //rysuje punkty
{
  for (int i=pts; i<nowePts+pts; i++)
  {
    fill(0, 0, 255);
    ellipse(x1[i], y1[i], 5, 5);
  }
};


void rysujPunktyKontrolne()    //rysuje punkty kontrolne
{
  for (int i=0; i<pts; i++)
  {
    fill(0, 0, 255);
    ellipse(x1[i], y1[i], 5, 5);
  }
};


void bezierRysuj()        //rysuje krzywa beziera dla punktow kontrolnych
{        
  noFill();
  stroke(0, 0, 255);
  bezier (x[0], y[0], x[1], y[1], x[2], y[2], x[3], y[3]);
};


void rysujLinie()    //rysuje wielobok Casteljou
{
  stroke(255, 0, 0);
  line(x1[0], y1[0], x1[1], y1[1]);
  line(x1[1], y1[1], x1[2], y1[2]);
  line(x1[2], y1[2], x1[3], y1[3]);
  line(x1[4], y1[4], x1[5], y1[5]);
  line(x1[5], y1[5], x1[6], y1[6]);
  line(x1[7], y1[7], x1[8], y1[8]);
};


void rysujStartMeta()      //rysuje pola start i meta
{
  noStroke();
  fill(255, 255, 210);
  rect(10, 630, 50, 50);     //start
  rect(640, 20, 50, 50);        //meta
  fill(0);
  text("START", 12, height-roznica-5);
  text("META", width-55, 15);
};

void rysujPB()      //rysuje punkty z krzywej beziera (wybrane w odstepie co 16, zaczynajac od 12 punktu idac od pierwszego punktu kontrolnego
{
  for (int i =12; i<1000; i+=16)
  {
    fill(0, 200, 0);
    noStroke();
    ellipse(punktyxB[i], punktyyB[i], 8, 8);
  }
}
