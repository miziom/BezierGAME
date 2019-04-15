int pts=4; //liczba punktów
int ptRozmiar=6; //rozmiar punktów
int nowePts = 6;
float []x=new float[pts];                //x dla punktow kontrolnych
float []y=new float[pts];                //y dla punktow kontrolnych
float []x1 = new float[nowePts+pts];     //x dla wszystkich 9 punktow
float []y1 = new float[nowePts+pts];     //y dla wszystkich 9 punktow
float []xHelp = new float[nowePts+pts];  //tablica pomocnicza dla x do wyznaczania punktow krzywej beziera
float []yHelp = new float[nowePts+pts];  //tablica pomocnicza dla y do wyznaczania punktow krzywej beziera
float []punktyxB = new float[1000];      //x punktow krzywej beziera
float []punktyyB = new float[1000];      //y punktow krzywej beziera
PFont czcionka;
float u=0.5;
int rb=255, gb=255, bb=255;
int roznica = 200;
boolean []Przesuniecie = new boolean[pts]; //przesuwanie punktów
boolean playGuard = false, startGuard = false, napis=false, wyswietl=false, napis2=false;
boolean poziom1 = true, poziom2=false, proba=false, rysujBeziera=false, czyPunktyBeziera=false;

void setup() {
  size(700, 900);
  smooth();
  losujPunktyBazowe();                      //losujemy punkty kontrolne krzywej
  czcionka = loadFont("Verdana-14.vlw");    //gdyby tutaj przy pierwszym starcie wysąapił błąd, należy dodać czcionkę, Tools->Create Font->Verdana, size 14
  textFont(czcionka);
};

void draw() {
  naStart();
  przepiszPunkty();                        //przepisanie punktow kontrolnych do nowej tablicy 
  wyliczPunkty(u);                         //wyliczenie punktów dla wieloboku Casteljou dla parametru u
  wypisz();                                //wypisanie wszelkich tekstow na ekranie
  rysujStartMeta();                        //rysowanie pol START i META
  rysujPunktyKontrolne();                  //rysowanie punktów kontrolnych
  numeryPunktowKontrolnych();              //wypisanie numerów punktów kontrolnych
  przepiszPunktyB();                       //przepisanie punktów do nowej tablicy w celu liczenia na ich podstawie punktów Beziera
  punktyBeziera();                         //wyznaczenie punktow na krzywej Beziera
  if (poziom1 && napis==false)             
  {
    wyswietl=false;
    sprawdzStart();                        //sprawdzamy, czy 1 punkt na starcie, 4 na mecie
    poziomRys1(300, 0, 50, 450, 1);        //rysowanie 1 poziomu
    rysujPunktyKontrolne();                //rysowanie punktow kontrolnych, aby byly widoczne
    numeryPunktowKontrolnych();            //wypisanie numerów punktow kontrolnych, aby byly widoczne
    if (playGuard && startGuard)
    {
      if (czyZaliczony1(300, 0, 50, 450))
      {
        napis=true;
        playGuard=false;
        poziom1=false;
        poziom2=true;
        wyswietl=true;
      } else
      {
        playGuard=false;
        napis2=true;
      }
    }
  };
  if (poziom2 && napis==false)
  {
    wyswietl=false;
    poziomRys2(300, 0, 50, 320, 300, 350, 50, 350, 2);          //rysujemy poziom 2
    rysujPunktyKontrolne();
    numeryPunktowKontrolnych();
    if (playGuard && startGuard)
    {
      if (czyZaliczony2(300, 0, 50, 320, 300, 350, 50, 350))
      {
        napis=true;
        playGuard=false;
        poziom1=true;
        poziom2=false;
        wyswietl=true;
      } else
      {
        playGuard=false;
        napis2=true;
      }
    }
  };
  if (wyswietl)
  {
    rysujLinie();
    rysujPunkty();
    bezierRysuj();
  }  
  if (napis)
  {
    wypisz2();
  }
  if (napis2)
  {
    wypisz3();
  };

  if (proba)              //poziom sprawdzania krzywej
  {
    naStart();
    rysujLinie();
    rysujPunkty();
    rysujPunktyKontrolne();
    numeryPunktowKontrolnych();
    bezierRysuj();
    wypisz();
    wypisz4();
    if(czyPunktyBeziera)      //wyswietlanie punktow beziera
    {
      rysujPB();
    }
  };
  for (int i=0; i<pts; i++) {
    if (Przesuniecie[i]) {
      x[i] = mouseX;
      y[i] = mouseY;
    };
 };
};
