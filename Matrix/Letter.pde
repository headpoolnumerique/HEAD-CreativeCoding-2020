class Letter {
  //posotion de chaques lettres
  int px;
  int py;
  //vitesse de descente
  int vy=14;
  //vie d'une lettre
  int life=255;
  //lettre en cours
  char letter;

  //timer de changement
  int timer=0;
  int timerMax;

  //constructeur d'une lettre (setup, mais pour chaque lettre)
  Letter(int _px, int _py) {
    //poisiotn initial
    this.px=_px;
    this.py=_py;
    //lettre aléatoire
    letter = char(int(random(512)));
    timerMax=int(random(8, 16));
    life=int(random(255));
  }

  //affichage de chaque lettre
  void draw() {
    fill(0, 255, 0, life);
    text(letter, px, py);

    //si une lettre dépasse la hauteur, on revient en haut.
    if (py>height) {
      py=-30;
    }

    //changement d'état d'une lettre
    //ajustement des variables
    if (timer>timerMax) {
      timer=0;
      py+=vy;
      timerMax=int(random(8, 16));
      letter = char(int(random(512)));
      life-=5;
    }

    //si l'opacité/vie d'une lettre tombe à zero
    if (life<0) {
      life=255;
    }
    timer++;
  }
}
