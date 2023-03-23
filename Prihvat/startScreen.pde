button start = new button(1280/2,720/2-25,150,75,"Нова гра");
button info = new button(1280/2,720/2+75,150,75,"Інформація");
button quit = new button(1280/2,720/2+175,150,75,"Вийти");

void startScreen(){
  start.draw();
  quit.draw();
  info.draw();
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(64);
  text("Прихватизація",1280/2, 720/2-200);
}


void mouseClickedStart(){
  if(mouseX<start.x+start.w/2 && mouseX>start.x-start.w/2 && mouseY>start.y-start.h/2 && mouseY<start.y+start.h/2){
    Prihvat.screen=2;
  }
  if(mouseX<quit.x+quit.w/2 && mouseX>quit.x-quit.w/2 && mouseY>quit.y-quit.h/2 && mouseY<quit.y+quit.h/2){
    exit();
  }
  
  if(mouseX<info.x+info.w/2 && mouseX>info.x-info.w/2 && mouseY>info.y-info.h/2 && mouseY<info.y+info.h/2){
    Prihvat.screen=3;
  }
}
