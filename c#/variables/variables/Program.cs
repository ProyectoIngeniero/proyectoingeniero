using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace variables
{
    class Program
    {
        static void Main(string[] args)
        {
            int i1;
            int i2;
            i1 = 2;
            i2 = 4;
            Console.WriteLine(operacion(i1,i2));
            String s1;
            String s2;
            s1 = "2";
            s2 = "4";
            Console.WriteLine(operacion(s1,s2));
            Cliente c1;
            c1 = new Cliente();
            Cliente c2;
            c2 = new Cliente();
            Console.WriteLine(operacion(c1, c2));
           
        }

        private static dynamic operacion(dynamic operando1, dynamic operando2)
        {
            return operando1 + operando2;
        }
    }
}
