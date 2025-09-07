
package lib;

import java.lang.Math;

public class Numero {
	
	int value;
	Mate objMate;
	
	public Numero() {
		value=0;
		objMate=new Mate();
	}
	
	// Procedimientos
	
	public void SetValue(int num) {
		value=num;
	}
	
	
	public void Anadir(int dig) {
		value=value*10+dig;
	}
	
	public void EliminarPos(int pos) {
		value=(value/objMate.Potencia(10, pos))*objMate.Potencia(10, pos-1)+value%objMate.Potencia(10, pos-1);
	}
	
	public void EliminarDig(int dig) {
		int i;
		i=1;
		while (i<=NumDig()) {
			if (Digito(i)==dig) {
				EliminarPos(i);
			} else {
				i++;
			}
		}
	}
	
	// Funciones
	
	public int GetValue() {
		return value;
	}
	
	public int NumDig() {
		return (int)Math.log10(value)+1;
	}
	
	public int Digito(int pos) {
		return (value/objMate.Potencia(10, pos-1))%10;
	}
	
	
	
	
}
