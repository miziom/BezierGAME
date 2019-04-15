void keyPressed()      //reakcje na klawisze
{
  switch(key)
  {
  case '4':
    {
      u*=1000;
      u++;
      u/=1000;
    }
    break;
  case '1':
    {
      u*=1000;
      u--;
      u/=1000;
    }
    break;
  case '5':
    {
      u*=100;
      u++;
      u/=100;
    }
    break;
  case '2':
    {
      u*=100;
      u--;
      u/=100;
    }
    break;
  case '6':
    {
      u*=10;
      u++;
      u/=10;
    }
    break;
  case '3':
    {
      u*=10;
      u--;
      u/=10;
    }
    break;
  case '0':
    u=0.5;
    break;

  case 'q':
    rb+=5;
    break;
  case 'a':
    rb-=5;
    break;
  case 'w':
    gb+=5;
    break;
  case 's':
    gb-=5;
    break;
  case 'e':
    bb+=5;
    break;
  case 'd':
    bb-=5;
    break;
  case 'z':
    {
      rb=255;
      gb=255;
      bb=255;
    }
    break;

  case 'p':
    playGuard = true;        //po wcisnieciu p zaczynamy gre
    break;

  case 'l':                  //po wcisnieciu l resetujemy
    {
      wyswietl=false;
      playGuard = false;
    }
    break;
  case 'm':                //wlaczenie trybu sprawdzania krzywej
    proba=true;
    break;
  case 'n':              //wylaczenie trybu sprawdzania krzywej
    proba=false;
    break;
  case 'b':
    czyPunktyBeziera=true;
    break;
  case 'v':
    czyPunktyBeziera=false;
    break;
  }
  if (u<0) u=0;           //u ma zawsze byc w przedziale <0,1>, tutaj jest to sprawdzane i w razie przekroczenia przedzialu, nastepuje powrót do wartości brzegowej
  if (u>1) u=1;

  if (rb<0) rb=0;        //to samo co powyżej, wartosci RGB moga byc z przedzialu <0,255.
  if (rb>255) rb=255;
  if (gb<0) gb=0;
  if (gb>255) gb=255;
  if (bb<0) bb=0;
  if (bb>255) bb=255;
};
