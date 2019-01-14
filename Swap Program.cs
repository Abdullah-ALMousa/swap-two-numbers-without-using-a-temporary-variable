using System; 
  
class PIWORKS { 
public static void Main() 
    { 
        int a = 10; 
        int b = 5; 
        Console.WriteLine("Before swap:"); 
        Console.WriteLine("a value: " + a); 
        Console.WriteLine("b value: " + b); 
		
			// algorithm is here 
			
			    a = a + b; 
				b = a - b; 
				a = a - b; 
			
	   
	   
        Console.WriteLine("After swap:"); 
        Console.WriteLine("a value: " + a); 
        Console.WriteLine("b value: " + b); 
    } 
} 