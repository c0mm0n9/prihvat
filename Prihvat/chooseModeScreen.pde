button mode1 = new button(1280-150,720/2-100,250,75,"Гравець проти гравця");
button mode2 = new button(1280-150,720/2,250,75,"Комп'ютер проти гравця");
button mode3 = new button(1280-150,720/2+100,250,75,"Гравець проти комп'ютера");
button modemenu = new button(1280-150,720/2+200,250,75,"Вийти в меню");

void chooseModeScreen(){
  mode1.draw();
  mode2.draw();
  mode3.draw();
  modemenu.draw();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Оберіть режим",1280-150, 720/2-200);  
}


void mouseClickedChoose(){
  if(mouseX<mode1.x+mode1.w/2 && mouseX>mode1.x-mode1.w/2 && mouseY>mode1.y-mode1.h/2 && mouseY<mode1.y+mode1.h/2){
    createGameScreen();
    gamemode =1;
    Prihvat.screen=1;
  }
  if(mouseX<mode2.x+mode2.w/2 && mouseX>mode2.x-mode2.w/2 && mouseY>mode2.y-mode2.h/2 && mouseY<mode2.y+mode2.h/2){
  createGameScreen();
  gamemode =2;
    Prihvat.screen=1;
  }
  if(mouseX<mode3.x+mode3.w/2 && mouseX>mode3.x-mode3.w/2 && mouseY>mode3.y-mode3.h/2 && mouseY<mode3.y+mode3.h/2){
  createGameScreen();
  gamemode =3;
    Prihvat.screen=1;
  }
  
  if(mouseX<modemenu.x+modemenu.w/2 && mouseX>modemenu.x-modemenu.w/2 && mouseY>modemenu.y-modemenu.h/2 && mouseY<modemenu.y+modemenu.h/2){
    Prihvat.screen=0;
  }
}
