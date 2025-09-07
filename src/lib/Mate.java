
package lib;

public class Mate {
	
	public int Potencia(int base, int exponente) {
		int pot=1;
		for (byte i=1;i<=exponente;i++)
			pot*=base;
		return pot;
	}
	
	public int Factorial(int num) {
		int fact=1;
		for (byte i=1;i<=num;i++)
			fact*=i;
		return fact;
	}
	
	public int Absoluto(int num) {
		if (num<0) num*=-1;
		return num;
	}
	
}
