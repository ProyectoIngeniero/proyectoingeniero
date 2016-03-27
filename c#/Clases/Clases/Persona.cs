using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Clases
{
    public partial class Persona
    {
        private string elApellido;
        private string elNombre;
        private DateTime laFecha_naci;
        private string laContraseña;
        private Persona[] losHijos = new Persona[10];
        public string apellido
        {
            get
            {
                return elApellido;
            }
            set
            {
                elApellido = value.ToUpper();
                apellidoChanged();
            }
        }
        public string nombre
        {
            get
            {
                return elNombre.ToLower();
            }
            set
            {
                elNombre = value;
            }
        }
        public DateTime fecha_naci
        {
            get
            {
                return laFecha_naci;
            }
            set
            {
                if (value.Year >= 1900)
                {
                    laFecha_naci = value;
                }
            }
        }
        public int edad
        {
            get
            {
                return DateTime.Now.Year - laFecha_naci.Year;
            }
        }
        public string contraseña
        {
            set
            {
                laContraseña = value;
            }
        }
        public Persona this[int index]
        {
            get
            {
                return losHijos[index];
            }
            set
            {
                losHijos[index] = value;
            }
        }
        public int calculoEdad()
        {
            return DateTime.Now.Year - laFecha_naci.Year;
        }
        public void visualización()
        {
            Console.WriteLine("Sr {0} {1} nacido el {2}", apellido, nombre, laFecha_naci);
        }
        public void visualización(string idioma)
        {
            switch (idioma) {
                case "es":
                Console.WriteLine("Sr {0} {1} nacido el {2}", apellido, nombre, laFecha_naci);
                break;
                case "en":
                Console.WriteLine("Mr {0} {1} was born {2}", apellido, nombre, laFecha_naci);
                break;
            }
        }
        partial void apellidoChanged();
    }
}
