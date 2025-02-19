public class Sphere {

    double r;

    Sphere(double r) {
        this.r = r;
    }

    public double calcVol() {
        return (4.0 / 3.0) * Math.PI * r * r * r;
    }

    public double calcSurfArea() {
        return 4 * Math.PI * r * r;
    }

    public static void main(String[] args) {
        Sphere sphere = new Sphere(5);

        System.out.println("Sphere Volume: " + sphere.calcVol());
        System.out.println("Sphere Surface Area: " + sphere.calcSurfArea());
    }
}