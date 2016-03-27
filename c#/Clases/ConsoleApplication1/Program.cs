using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Clases;
namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            Persona p = new Persona();
            Persona hijo1 = new Persona();
            Persona hijo2 = new Persona();
            p.apellido = "garcia";
            p.nombre = "pablo";
            p.fecha_naci = new DateTime(1954, 12, 23);
            hijo1.apellido = "garcia";
            hijo1.nombre = "pascual";
            hijo1.fecha_naci = new DateTime(1979, 10, 5);
            //tambien podemos utilizar el apellido del padre para
            //inicilizar el nombre del hijo
            hijo2.apellido = p.apellido;
            hijo2.nombre = "marco";
            hijo2.fecha_naci = new DateTime(1982, 4, 18);
            //podemos asignar un hijo a una persona
            p[0] = hijo1;
            p[1] = hijo2;
            //verifiquemos que nuestros datos son correctos
            p.visualización();
            Console.WriteLine("Sr {0} {1} nacido el {2} tiene 2 hijos", p.apellido, p.nombre, p.fecha_naci);
            Console.WriteLine("{0} {1} que tiene {2} años", p[0].apellido, p[0].nombre, p[0].calculoEdad());
            Console.WriteLine("{0} {1} que tiene {2} años", p[1].apellido, p[1].nombre, p[1].calculoEdad());
            Console.WriteLine("Pulsa una tecla para salir");
            p.apellido = "Garcia";
            Console.WriteLine(p.apellido);
            Console.ReadLine();
        }
    }
}
