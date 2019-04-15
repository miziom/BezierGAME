void sprawdzStart()      //sprawdza, czy pkt 1 jest na starcie i pkt 4 na mecie
{
  if (x[0]>=10 && x[0]<=60 && y[0]>=630 && y[0]<=680 && x[3]>=640 && x[3]<=690 && y[3]>=20 && y[3]<=70)
    startGuard=true;
  else
  {
    startGuard=false;
    playGuard=false;
  }
};

void poziomRys1(int x, int y, int w, int h, int poziom)    //tworzenie rysowanie przeszkod dla poziomu
{
  fill(100);
  rect(x, y, w, h);
  text("Poziom: "+poziom, 10, 20);
};

boolean czyZaliczony1(int x, int y, int w, int h)      //sprawdzenie czy poziom moze byc zaliczony
{
  boolean guard=true;
  for (int i=0; i<1000; i++)
  {
    if ((punktyxB[i]<=x+w && punktyxB[i]>=x && punktyyB[i]>=y && punktyyB[i]<=y+h) || (punktyyB[i]>=700))
    {
      guard=false;
      return guard;
    };
  }
  return true;
};

void poziomRys2(int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2, int poziom)
{
  fill(100);
  rect(x1, y1, w1, h1);
  rect(x2, y2, w2, h2);
  text("Poziom: "+poziom, 10, 20);
};

boolean czyZaliczony2(int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2)
{
  boolean guard=true;
  for (int i=0; i<1000; i++)
  {
    if ((punktyxB[i]<=x1+w1 && punktyxB[i]>=x1 && punktyyB[i]>=y1 && punktyyB[i]<=y1+h1) || (punktyyB[i]>=700) || (punktyxB[i]<=x2+w2 && punktyxB[i]>=x2 && punktyyB[i]>=y2 && punktyyB[i]<=y2+h2))
    {
      guard=false;
      return guard;
    };
  }
  return true;
};
