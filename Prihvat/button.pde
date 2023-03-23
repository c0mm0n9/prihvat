public class button{
    int h;
    int w;
    int x;
    int y;
    String text;
    public button(int x, int y,int w,int h,String text){
      this.x=x;
      this.y=y;
      this.w=w;
      this.h=h;
      this.text=text;
    }
    
    public void draw(){
       textAlign(CENTER, CENTER);
        textSize(16);
        fill(#000d40);
        rect(x,y,w,h);
        fill(255);  
        text(text,x,y);
        rectMode(CENTER);
       
    }
}
