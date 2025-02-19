public class Pyramid {

    double l;
    double w;
    double h;

    Pyramid(double l, double w, double h) {
        this.l = l;
        this.w = w;
        this.h = h;
    }

    public double calcVol() {
        return (1.0 / 3) * l * w * h;
    }

    public double calcSurfArea() {
        return l * w + 2 * (l * h) + 2 * (w * h);
    }

    public static void main(String[] args) {
        Pyramid pyramid = new Pyramid(4, 6, 8);
        System.out.println("Pyramid Volume: " + pyramid.calcVol());
        System.out.println("Pyramid Surface Area: " + pyramid.calcSurfArea());
    }
}