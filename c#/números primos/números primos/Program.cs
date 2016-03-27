using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace números_primos
{
    class Program
    {
        public static bool esPrimo(int nb)
        {
            if (nb < 2)
            {
                return false;
            }
            if (nb == 2)
            {
                return true;
            }
            if (nb % 2 == 0)
            {
                return false;
            }
            int i = 3;
            while ((i * i <= nb))
            {
                if (nb % i == 0)
                {
                    return false;
                }
                else
                {
                    i = i + 1;
                }
            }
            return true;
        }

        public static AsyncCallback int cuentaPrimos(int maxi)
        {
            int i;
            int nb;
            {
                nb = 0;
                for (i = 0; i <= maxi; i++)
                {
                    if(esPrimo(i)){
                        nb = nb + 1;
                    }
                }
            }
            return nb;
        }

        static void Main(string[] args)
        {
            Console.Write("Indique el valor maximo para el calculo: ");
            string maxi = Console.ReadLine();
            int resultado;
            char respuesta;
            do
            {
                resultado = cuentaPrimos(int.Parse(maxi));
                Console.WriteLine(resultado);
                respuesta = Console.ReadKey().KeyChar;
            } while (respuesta != 's');
            Console.WriteLine(resultado);
            Console.ReadKey();
        }
    }
}
