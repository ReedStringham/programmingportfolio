// Creating a Java Class
public class Box {
    
   int l;
   int w;
   int h;
   
   // Constructor
    Box(int l, int w, int h) {
        this.l = l;
        this.w = w;
        this.h = h;
       
    }
    // Methods to calculate volume and surface area
    public int calcVol() {
        int vol=l*w*h;
        return vol;
    }
       
    public int calcSurfArea() {
    // calculate surface area
        int sa = 2*l*w+2*w*h+2*h*l;
        return sa;
    }
       
 }