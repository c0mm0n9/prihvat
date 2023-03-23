public class tile{
  int x;
  int y;
  color Color;
  boolean isCaptured = false;
  tile(int x,int y, color Color){
    this.x=x;
    this.y=y;
    this.Color = Color;
    
  }
  
  public int getX(){
    return x;
  }
  public int getY(){
    return y;
  }
  
  public void setColor(color C){
    Color=C;
  }
  
  public boolean isCaptured(){
    return isCaptured;
  }
  
  public void setCaptured(){
    isCaptured = true;
  }
  
  void draw(){
    rectMode(CENTER);
    fill(Color);
    stroke(0);
    rect(x+25,y+25,50,50);}
}
