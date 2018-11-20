import processing.video.*; 

Movie video;
int numPixelsWide, numPixelsHigh, numPixelsArea ;
int blockSize=20;
color movColors[];
float mt, md;
int c;

void setup(){
 size(1280, 720);
frameRate(70);
video = new Movie(this, "First love 2.mp4");
video.loop();

 numPixelsWide = width / blockSize;
 numPixelsHigh = height / blockSize;
 numPixelsArea = numPixelsWide + numPixelsHigh/2 ;
 movColors = new color[numPixelsWide * numPixelsHigh];
 

}

void draw(){
  pantalla();
}
  
  void pantalla(){
     image(video,0,0);
    
 
  if (video.available() == true) {
    video.read();
    video.loadPixels();
   
    int count = c;
    for (int j = 0; j < numPixelsHigh; j++) {
      for (int i = 0; i < numPixelsWide; i++) {
        movColors[count] = video.get(i*blockSize, j*blockSize);
        count++;
      }
    }
  }
  
   background(255);
  for (int j = 0; j < numPixelsHigh; j++) {
    for (int i = 0; i < numPixelsWide; i++) {
      fill(movColors[j*numPixelsWide + i]);
     
     rect(i*blockSize, j*blockSize, blockSize, blockSize);
      fill(255,0,0);
       textSize(8);
      text("love",i*blockSize, j*blockSize);
     
    }
  }
  
  float md = video.duration();
float mt = video.time();
if(keyPressed){
  if(key == 'p'){
    video.pause();
  }
  else{
    if(key == 'P'){
      video.play();
    }
  }
  
  
}
if(mt>md*0){
  textSize(15);
     fill(255,247,8);
     text("p = pause",1100,30);
     text("P = play",1100,50);
}

if (mt > md*0.03){
  textSize(20); 
  fill(255); 
  text("Persuasiva la nota sonó.",10,120/2);
  
}


if (mt > md*0.05) {
textSize(20);
    fill(255);
    text("Tocando con tristeza a mi corazón.",10,160/2); 

}
 if(mt > md*0.10){
    fill(255); 
    text("Desbordo los recuerdos, y ahí estabas tú...",10,240/2);
  }
 
 if(mt > md*0.169){
    fill(255); 
    text("y aquel niño que abrazaste con dolor.",10,280/2);
  }
  
  if(mt > md*0.203){
    fill(255); 
    text("Aún resuena en la soledad esa canción que llevaba...",10,398/2);
  }
  
  
  if(mt > md*0.234){
    fill(255); 
    text("TU NOMBRE.",520,398/2);
  }
  
  if(mt > md*0.303){
    fill(255); 
    text("Sosegado.",10,480/2);
  }
  
   if(mt > md*0.353){
    fill(255); 
    text("Creí que en ella estaría escrito la promesa de permanecer a tu lado.  ",10,521/2);
  }
  
  if(mt > md*0.54){
    fill(255); 
    text("Pero mintió.",10,638/2);
  }
  
  if(mt > md*0.589){
    fill(255); 
    text("El fuego avanzo y avanzo",10,678/2);
  }
  
   if(mt > md*0.639){
    fill(255); 
    text("hasta donde el destino nos traiciono.",10,718/2);
  }
  
   if(mt > md*0.742){
    fill(255); 
    text("Culminamos.",10,840/2);
  }
  
  if(mt > md*0.796){
    fill(255); 
    text("Te alejaste y yo corrí...",10,880/2);
  }
  
  if(mt > md*0.841){
    fill(255); 
    text("corrí hasta encontrarme con aquel piano",10,920/2);
  }
  
  if(mt > md*0.892){
    fill(255); 
    text("que solo quedó de mi primer amor… ",10,960/2);
  }
  

  

  
  
  }

 
