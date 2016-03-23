//Fig. 2.20: Comparación
//Compara enteros utilizando instrucciones if, operadores relacionales 
// y de igualdad.



package comparacion;

//Paquetes java
import javax.swing.JOptionPane;
public class Comparacion {

    //El método main empieza la ejecución  de la aplicación en java.
    public static void main(String[] args) {
        String primerNumero;    // Primera cadena introducida por el usuario
        String segundoNumero;   // Segunda cadena introducida por el usuario
        String resultado;       //Una cadenaque contiene el resultado
        
        int numero1;            //Primer número a comparar
        int numero2;            //Segundo número a comparar
        
        //Recibir el primer número del usuario como una cadena
        primerNumero = JOptionPane.showInputDialog("Escriba el primer número");
        
        //Recibir el segundo número del usuario como una cadena
        segundoNumero = JOptionPane.showInputDialog("Escriba el segundo número");
        
        //Convertir los números de tipo String a tipo int
        numero1 = Integer.parseInt(segundoNumero);
        numero2 = Integer.parseInt(primerNumero);
        
        //Inicializar resultados con cadena vacia
        resultado = "";
        
        if(numero1 == numero2)
            resultado = resultado + numero1 + " == " + numero2 + "\n";
        if(numero1 != numero2)
            resultado = resultado + numero1 + " != " + numero2 + "\n";
        if(numero1 < numero2)
            resultado = resultado + numero1 + " < " + numero2 + "\n";
        if(numero1 > numero2)
            resultado = resultado + numero1 + " > " + numero2 + "\n";
        if(numero1 <= numero2)
            resultado = resultado + numero1 + " <= " + numero2 + "\n";
        if(numero1 >= numero2)
            resultado = resultado + numero1 + " >= " + numero2 + "\n";
        
        //Mostrar los resultados
        JOptionPane.showMessageDialog(null, resultado, "Resultados de la comparación", JOptionPane.INFORMATION_MESSAGE);
        
        System.exit(0);         //Terminar la aplicación
        
    }//Fin del método main
    
}//Fin de la clase Comparación
