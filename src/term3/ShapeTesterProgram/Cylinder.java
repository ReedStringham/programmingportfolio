public class Cylinder {
    
    double r;
    double h;
        
    Cylinder(double r, double h) {
        this.r = r;
        this.h = h;
    }
        
    public double calcVol() {
        double vol = Math.PI*Math.pow(r,2)*h;
        return vol;
    }
    public double calcSurfArea() {
        double sa = (2*Math.PI*r*h) + (2*Math.PI*Math.pow(r,2));
        return sa;
    }
}