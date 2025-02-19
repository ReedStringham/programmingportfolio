import java.lang.Math;
import java.util.Scanner;

public class MyProgram {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // pyramid and sphere instances
        Pyramid p1 = new Pyramid(12, 11, 10);
        Sphere s1 = new Sphere(12);

        while (true) {  // Infinite loop to keep the program running
            System.out.println("This will calculate surface area and volume for the shape that you will decide.");
            System.out.println("'b' for box, 'p' for pyramid, 'c' for cylinder, and 's' for sphere.");
            System.out.println("Enter 'q' if you want to stop the code.");

            String shapeString = scanner.nextLine();

            if (shapeString.equals("q")) {
                System.out.println("Stopping.");
                break;  // Exit the loop and end the program
            }

            if (shapeString.equals("b")) {
                System.out.println("You chose box");
                System.out.println("Enter length:");
                String length = scanner.nextLine();
                System.out.println("Enter width:");
                String width = scanner.nextLine();
                System.out.println("Enter height:");
                String height = scanner.nextLine();

                // Create the Box
                Box b1 = new Box(Integer.parseInt(length), Integer.parseInt(width), Integer.parseInt(height));

                System.out.println("Your volume is " + b1.calcVol());
                System.out.println("Your surface area is " + b1.calcSurfArea());
                System.out.println("");
            
            } else if (shapeString.equals("c")) {
                System.out.println("You chose cylinder");
                System.out.println("Enter radius:");
                String radius = scanner.nextLine();
                System.out.println("Enter height:");
                String height = scanner.nextLine();
                
                Cylinder c1 = new Cylinder(Integer.parseInt(radius), Integer.parseInt(height));

                System.out.println("Your volume is " + c1.calcVol());
                System.out.println("Your surface area is " + c1.calcSurfArea());
                System.out.println("");
                
            } else if (shapeString.equals("p")) {
                System.out.println("You chose pyramid");
                System.out.println("Enter length:");
                String length = scanner.nextLine();
                System.out.println("Enter width:");
                String width = scanner.nextLine();
                System.out.println("Enter height:");
                String height = scanner.nextLine();

                // Create the Pyramid and calculate the volume and surface area
                Pyramid p2 = new Pyramid(Double.parseDouble(length), Double.parseDouble(width), Double.parseDouble(height));
                System.out.println("Pyramid volume: " + p2.calcVol());
                System.out.println("Pyramid surface area: " + p2.calcSurfArea());
                System.out.println("");

            } else if (shapeString.equals("s")) {
                System.out.println("You chose sphere");
                System.out.println("Enter radius:");
                String radius = scanner.nextLine();

                // Create the Sphere and calculate the volume and surface area
                Sphere s2 = new Sphere(Double.parseDouble(radius));
                System.out.println("Sphere volume: " + s2.calcVol());
                System.out.println("Sphere surface area: " + s2.calcSurfArea());
                System.out.println("");

            } else {
                System.out.println("Invalid choice. Please choose 'b', 'p', 'c', 's', or 'q' to quit.");
            }
        }

        scanner.close();
    }
}