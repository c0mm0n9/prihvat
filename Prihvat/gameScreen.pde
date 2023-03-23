ArrayList<ArrayList<tile>> tiles = new ArrayList<ArrayList<tile>>();
boolean fPlayer = true;
color cc = #21b842;
boolean isEnd = false;
boolean computerMove = false;
button newGame = new button(1280/2,720/2-100,150,75,"Нова гра");
button surrender = new button(1280-150,720-75,150,75,"Здатися");
button menu = new button(1280/2,720/2+25,150,75,"Вийти в меню");
void createGameScreen(){
  tiles = new ArrayList<ArrayList<tile>>();
  int startX = 50;
  int startY = 50;
  color c1 = #FFFFFF;
  for(int i =0;i<8; i++){
    tiles.add(new ArrayList<tile>());
    for(int k =0;k<8; k++){
      tiles.get(i).add(new tile(startX,startY,c1));
      startX+=50;
    }
    startX=50;
    startY+=50;
  }
  fPlayer=true;
  cc = #21b842;
  isEnd = false;
}

void gameScreen(){
    if(fPlayer)
    cc=#21b842;
  else
    cc=#b31e23;
  for(int i =0;i<8; i++){
    for(int k =0;k<8; k++){
      tiles.get(i).get(k).draw();
    }
  }
  fill(cc);
  textSize(32);
  int numP = 0;
  if(fPlayer) numP=1;
  else numP= 2;
  if(isEnd){
    if(!fPlayer)
    cc=#21b842;
  else
    cc=#b31e23;
    String win = "";
    if(gamemode == 1){
    if(!fPlayer) win="гравець №1";
    else win="гравець №2";
    }
    if(gamemode == 2){
    if(!fPlayer) win="комп'ютер";
    else win="гравець №2";
    }
    if(gamemode == 3){
    if(fPlayer) win="комп'ютер";
    else win="гравець №2";
    }
    text("Переміг "+win,700, 100);
    newGame.draw();
    menu.draw();
  }else{
  text("Черга граця №"+numP,700, 100);
  surrender.draw();
  }
  
  
    if(gamemode == 2){
      computerMove=fPlayer;
    }
    if(gamemode == 3){
      computerMove=!fPlayer;
    }
    if(computerMove){
      for(int i =0;i<8; i++){
    for(int k =0;k<8; k++){
       if(!tiles.get(i).get(k).isCaptured() && computerMove){
        fPlayer=!fPlayer;
        tiles.get(i).get(k).setColor(cc);
        tiles.get(i).get(k).setCaptured();
        for(int j = -1; j<2;j++){
          for(int t = -1; t<2;t++){
              if(i+j>-1 && k+t>-1 && i+j<8 && k+t<8 ){
              tiles.get(i+j).get(k+t).setCaptured();
              computerMove = false;
          }
        }
        }
       }
      }
    }
  
      if(isEnd()){
        isEnd = true;
      }
      
    }
    }
  
  
  
  


void mouseClickedGame(){
  if(!isEnd){
    if(!computerMove){
    
  for(int i =0;i<8; i++){
    for(int k =0;k<8; k++){
      int x = tiles.get(i).get(k).getX();
      int y = tiles.get(i).get(k).getY();
      if(mouseX<x+50 && mouseX>x && mouseY>y && mouseY<y+50){
       if(!tiles.get(i).get(k).isCaptured()){
        fPlayer=!fPlayer;
        tiles.get(i).get(k).setColor(cc);
        tiles.get(i).get(k).setCaptured();
        for(int j = -1; j<2;j++){
          for(int t = -1; t<2;t++){
              if(i+j>-1 && k+t>-1 && i+j<8 && k+t<8 ){
              tiles.get(i+j).get(k+t).setCaptured();
          }
        }
        }
       }
      }
    }
  }
  if(isEnd()){
    isEnd = true;
  }
  if(mouseX<surrender.x+surrender.w/2 && mouseX>surrender.x-surrender.w/2 && mouseY>surrender.y-surrender.h/2 && mouseY<surrender.y+surrender.h/2){
    isEnd = true;
  }
    }
  }else{
  if(mouseX<newGame.x+newGame.w/2 && mouseX>newGame.x-newGame.w/2 && mouseY>newGame.y-newGame.h/2 && mouseY<newGame.y+newGame.h/2){
    createGameScreen();
  }
  
  if(mouseX<menu.x+menu.w/2 && mouseX>menu.x-menu.w/2 && mouseY>menu.y-menu.h/2 && mouseY<menu.y+menu.h/2){
    createGameScreen();
    Prihvat.screen=0;
  }
  
}
}

boolean isEnd(){
    for(int i =0;i<8; i++){
    for(int k =0;k<8; k++){
      if(!tiles.get(i).get(k).isCaptured()){
        return false;
      }
    }
    }
    return true;
}
