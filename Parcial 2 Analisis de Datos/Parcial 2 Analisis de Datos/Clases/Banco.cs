using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Parcial_2_Analisis_de_Datos.Clases
{
    public class Banco
    {
        public string Nombre { get; private set; }
        public decimal[] Tasas { get; private set; }

        public Banco(String nombre, decimal[] tasas)
        {
            String Nombre = nombre;
            decimal[] Tasas = tasas;
        }

        public decimal PromedioTasas()
        {
            decimal promedio = 0;
            foreach (var t in Tasas)
            {
                promedio += t;
            }
            promedio = promedio / Tasas.Length;

            return promedio;
        }

        public decimal Rendimiento(decimal capital, int periodos)
        {
            decimal monto = capital;
            decimal tasaPeriodo = PromedioTasas() / 100 / periodos;

            for (int i = 0; i < periodos; i++)
            {
                monto = monto + monto * tasaPeriodo;
            }

            return monto - capital; //la ganancia segun el periodo del plazo fijo 
        }
    }
}