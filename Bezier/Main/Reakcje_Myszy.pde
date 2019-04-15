void mousePressed() 
{
  for (int i=0; i<pts; i++) {
    if (mouseX>=x[i]-5&&mouseX<=x[i]+ ptRozmiar +5 && mouseY>=y[i]-5&&mouseY<=y[i]+ ptRozmiar +5)   //warunek na to, ktory punkt ma byc odblokowany
    {
      Przesuniecie[i]=true;          //odblokowanie wybranego punktu
    };
  };
};


void mouseReleased() 
{
  for (int i=0; i<pts; i++)
  {
    Przesuniecie[i]=false;           //zablokowanie punktu
  };
};


void mouseMoved () {
  cursor(ARROW);    //zmiana ikony kursora na ikonę strzałki
  for (int i=0; i<pts; i++) {
    if (mouseX>=x[i]-5&&mouseX<=x[i]+ptRozmiar+5 && mouseY>=y[i]-5&&mouseY<=y[i]+ ptRozmiar +5)
    {
      cursor(HAND);    //zmiana ikony kursora na ikonę ręki
    };
  };
};

void mouseClicked()
{
  napis=false;
  napis2=false;
};
