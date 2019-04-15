void numeryPunktowKontrolnych()      //numerowanie punktów kontrolnych
{
  for (int i=1; i<5; i++)
  {
    fill(0);
    text(i, x[i-1]+10, y[i-1]+10);
  }
};


void wypisz()      //wypisywanie okna 
{
  fill(0);
  text("Wartości RGB dla tła:", 40, 730);
  text("R = "+rb+"     (Q/A - zmiana wartości)", 10, 750);
  text("G = "+gb+"     (W/S - zmiana wartości)", 10, 770);
  text("B = "+bb+"     (E/D - zmiana wartości)", 10, 790);
  text("Z - reset kolorów", 10, 810);
  text("M - włącz tryb sprawdzenia krzywej", 10, 830);
  text("N - wyłącz tryb sprawdzenia krzywej", 10, 850);
  text("P - rozpocznij", 10, 870);
  text("L - resetuj", 10, 890);
  
  text("Wartość u: "+u, 300, 730);
  text("1/4   -   -/+ o 0.001", 300, 750);
  text("2/5   -   -/+ o 0.01", 300, 770);
  text("3/6   -   -/+ o 0.1:", 300, 790);
  text("0   -   reset  'u'", 300, 810);
};


void wypisz2()
{
  stroke(0);
  fill(255);
  rect(200, 280, 280, 50);
  fill(255, 0, 0);
  text("POZIOM I ZALICZONY. GRATULACJE!!!", 210, 300);
  text("kliknij przycisk myszy by kontynuowac", 210, 320);
};


void wypisz3()
{
  stroke(0);
  fill(255);
  rect(200, 280, 280, 50);
  fill(255, 0, 0);
  text("SPRÓBUJ JESZCZE RAZ", 260, 300);
  text("kliknij przycisk myszy, by kontynuowac", 208, 320);
};

void wypisz4()
{
  text("B - włącz punkty beziera", 300, 830);
  text("V - wyłącz punkty beziera", 300, 850);
};
