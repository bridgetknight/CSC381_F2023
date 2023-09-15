public class Project01 {
	public static void main( String[] args ) {

		int number1 = Integer.parseInt(args[0]);
		int number2 = Integer.parseInt(args[1]);
		int sum = number1 + number2;
		
		System.out.println("The following are to test outputs:\n\n");
		System.out.printf( "The sum is of %d and %d is: %d\n", 
							number1, number2, sum );
		System.out.println("The Outputs from Java program ends here.\n");
	}  
}  

