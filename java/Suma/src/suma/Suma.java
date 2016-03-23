//Fig. 2.9: Suma.java
//Programa que muestra la suma de dos números

package suma;

//Paquetes de java
import javax.swing.*; //El programa  utiliza JOptionPane

public class Suma {

    //El método main empieza la ejecución de un programa en java.
    public static void main(String[] args) {
        String primerNumero; // Primera cadena.
        String segundoNumero; // Segunda cadena.
        
        int numero1; // primer número a sumar
        int numero2; // Segundo número a sumar
        int suma;    // Suma de número1 y número2
        
        //leer el primer número del usuario como una cadena
        primerNumero = JOptionPane.showInputDialog("Ingrese el primer número");
        
        //leer el segundo número del usuario como una cadena
        segundoNumero = JOptionPane.showInputDialog("Ingrese el segundo número");
        
        //Convertir los números de tipo String a tipo Int
        numero1 = Integer.parseInt(primerNumero);
        numero2 = Integer.parseInt(segundoNumero);
        
        //Sumar los numeros 1 y 2
        suma = numero1 + numero2;
        
        //Mostrar el resultado
        JOptionPane.showMessageDialog(null, "La suma es: " + suma, "Resultado", JOptionPane.INFORMATION_MESSAGE);
        
        System.exit(0); //Terminar aplicación con la ventana
    }//Fin del método main
    
}//Fin de la clase suma
