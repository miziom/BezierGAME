void przepiszPunkty()      //funkcja przepisuje punkty kontrolne do tablicy wszystkich punktow
{
  for (int i=0; i<pts; i++)
  {
    x1[i]=x[i];
    y1[i]=y[i];
  }
};

void wyliczPunkty(float u)    //liczy punkty dla wieloboku Casteljou dla parametru u
{
  int j=0;
  for (int i=0; i<nowePts; i++)
  {
    x1[pts+i] = x1[j]+((x1[j+1]-x1[j])*u);
    y1[pts+i] = y1[j]+((y1[j+1]-y1[j])*u);
    j++;
    if (j == 3 || j == 6)
    {
      j++;
    }
  }
};

void przepiszPunktyB()    //przepisuje punkty do tabeli pomocniczej
{
  for (int i=0; i<pts; i++)
  {
    xHelp[i]=x[i];
    yHelp[i]=y[i];
  }
};

void punktyBeziera()    //wyznaczenie punktow krzywej Beziera
{
  int k=0;
  for (float z = 0.001; z<1; z+=0.001)
  {
    int j=0;
    for (int i=0; i<nowePts; i++)
    {
      xHelp[pts+i] = xHelp[j]+((xHelp[j+1]-xHelp[j])*z);
      yHelp[pts+i] = yHelp[j]+((yHelp[j+1]-yHelp[j])*z);
      j++;
      if (j == 3 || j == 6)
      {
        j++;
      }
    }
    punktyxB[k]=xHelp[9];
    punktyyB[k]=yHelp[9];
    k++;
  }
};

void losujPunktyBazowe()    //losuje punkty startowe w odpowiednich ćwiartkach
{
  x[0] = random(0, width/2);
  y[0] = random((height-roznica)/2, height-roznica-1);

  x[1] = random(0, width/2);
  y[1] = random(0, (height-roznica)/2);

  x[2] = random(width/2, width-1);
  y[2] = random(0, (height-roznica)/2);

  x[3] = random(width/2, width-1);
  y[3] = random((height-roznica)/2, height-roznica-1);

  for (int i=0; i<4; i++)
  {

    Przesuniecie [i]=false; //blokowanie punktów
  }
};
