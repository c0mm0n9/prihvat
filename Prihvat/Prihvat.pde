static int screen = 0;
int gamemode=1;

void setup(){
  size(1280,720);
  createGameScreen();
  surface.setTitle("Прихватизація");
}

void draw(){
  background(255);
  if(screen == 0){
  startScreen();
  }
  if(screen==2){
  chooseModeScreen();
  }
  if(screen == 1){
  gameScreen();
  }
  if(screen == 3){
  infoScreen();
  }
}

void mouseClicked(){
if(screen == 0){
  mouseClickedStart();
  }
  if(screen==2){
  mouseClickedChoose();
  }
  if(screen==3){
  mouseClickedInfo();
  }
  if(screen == 1){
  mouseClickedGame();
  }

}
