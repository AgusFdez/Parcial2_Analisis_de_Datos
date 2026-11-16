using System;
using System.Collections.Generic;

namespace Parcial_2_Analisis_de_Datos.Clases
{
    public class Banco
    {
        public string Nombre { get; private set; }
        public decimal[] Tasas { get; private set; }

        public Banco(String nombre, decimal[] tasas)
        {
            Nombre = nombre;
            Tasas = tasas;
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
    public class OpcionInversion
    {
        public string NombreBanco { get; private set; }
        public string Modalidad { get; private set; }
        public decimal Rendimiento { get; private set; }

        public OpcionInversion(string nombreBanco, string modalidad, decimal rendimiento)
        {
            NombreBanco = nombreBanco;
            Modalidad = modalidad;
            Rendimiento = rendimiento;
        }
    }

    public class AnalizadorInversion
    {
        private const int PeriodosAnual = 1;
        private const int PeriodosTrimestral = 4;
        private const int PeriodosMensual = 12;

        public List<Banco> Bancos { get; private set; }
        public decimal Capital { get; private set; }

        public AnalizadorInversion(List<Banco> bancos, decimal capital)
        {
            Bancos = bancos;
            Capital = capital;
        }

        public List<OpcionInversion> ObtenerOpciones() // lista de opciones de rendimiento segun el capital y los periodos de inversion
        {
            List<OpcionInversion> opciones = new List<OpcionInversion>();

            foreach (Banco banco in Bancos)
            {
                opciones.Add(new OpcionInversion(banco.Nombre, "Anual", banco.Rendimiento(Capital, PeriodosAnual)));
                opciones.Add(new OpcionInversion(banco.Nombre, "Trimestral", banco.Rendimiento(Capital, PeriodosTrimestral)));
                opciones.Add(new OpcionInversion(banco.Nombre, "Mensual", banco.Rendimiento(Capital, PeriodosMensual)));
            }
            return opciones;
        }

        public OpcionInversion ObtenerMejorOpcion() // revisa que opcion de inversion es la mejor segun el rendimiento
        {
            List<OpcionInversion> opciones = ObtenerOpciones();
            OpcionInversion mejorOpcion = opciones[0];
            foreach (OpcionInversion opcion in opciones)
            {
                if (opcion.Rendimiento > mejorOpcion.Rendimiento)
                {
                    mejorOpcion = opcion;
                }
            }
            return mejorOpcion;
        }
    }
}