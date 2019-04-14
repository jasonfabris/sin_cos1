import processing.pdf.*;

//beginRecord(PDF, String.format("C:/Users/Jason/Documents/Processing Projects/Output/sin_cos_%d%d%d%d%d.pdf", year(), month(), day(), hour(), minute(), second()));

size(1100,1100);
colorMode(HSB, 360, 100, 100, 100);

background(48, 5, 95);

for (int i = 0; i <= 5000; i ++) {
     for (int j = 0; j <= 3000; j ++) {
       float x = cos(i/2) + cos(j-i) + cos(i*j);
       float y = sin(j) + sin(j+1) + sin(i*j*i);
       
       x = map(x, 0, 3, 0, width);
       y = map(y, 0, 3, 0, height);
       
       stroke(262, 100, 90, 12);
       point(x,y);
     }
    
}
 save(String.format("C:/Users/Jason/Documents/Processing Projects/Output/sin_cos_%d%d%d%d%d.tiff", year(), month(), day(), hour(), minute(), second()));
 println("done");
//endRecord();
//exit();
