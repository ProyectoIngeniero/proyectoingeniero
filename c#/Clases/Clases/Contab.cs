using Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Clases
{
    partial class Persona
    {
        partial void apellidoChanged()
        {
            Console.WriteLine("Se asigna un nuevo apellido");
        }
    }
}
