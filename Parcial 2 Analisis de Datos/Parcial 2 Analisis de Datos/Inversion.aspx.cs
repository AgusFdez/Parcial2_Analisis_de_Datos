using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web.UI.WebControls;
using Parcial_2_Analisis_de_Datos.Clases;

namespace Parcial_2_Analisis_de_Datos
{
    public partial class Inversion : System.Web.UI.Page
    {
        private static readonly CultureInfo AR = new CultureInfo("es-AR");

        private  bool TryLeer(TextBox caja, out decimal valor) // lee el valor de la yxtbox y lo convierte a decimal
        {
            return decimal.TryParse(caja.Text.Trim(), NumberStyles.Number, AR, out valor);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            lblError.Text = "";
            lblRecomendacion.Text = "";

            if (!TryLeer(txtCapital, out decimal capital))
            {
                lblError.Text = "Ingrese un capital válido.";
                return;
            }

            decimal[] tasasProv = new decimal[3];
            decimal[] tasasNac = new decimal[3];
            decimal[] tasasHip = new decimal[3];

            // Validar y guardar las tasas para cada banco
            if (!TryLeer(txtProv1, out tasasProv[0]) ||
                !TryLeer(txtProv2, out tasasProv[1]) ||
                !TryLeer(txtProv3, out tasasProv[2]))
            {
                lblError.Text = "Ingrese correctamente las tasas del Banco Provincia.";
                return;
            }

            if (!TryLeer(txtNac1, out tasasNac[0]) ||
                !TryLeer(txtNac2, out tasasNac[1]) ||
                !TryLeer(txtNac3, out tasasNac[2]))
            {
                lblError.Text = "Ingrese correctamente las tasas del Banco Nación.";
                return;
            }

            if (!TryLeer(txtHip1, out tasasHip[0]) ||
                !TryLeer(txtHip2, out tasasHip[1]) ||
                !TryLeer(txtHip3, out tasasHip[2]))
            {
                lblError.Text = "Ingrese correctamente las tasas del Banco Hipotecario.";
                return;
            }

            List<Banco> bancos = new List<Banco>
            {
                new Banco("Banco Provincia", tasasProv),
                new Banco("Banco Nación", tasasNac),
                new Banco("Banco Hipotecario", tasasHip)
            };

            AnalizadorInversion analizador = new AnalizadorInversion(bancos, capital);

            // Mostrar las opciones de rendimiento en el GridView
            gvRendimientos.DataSource = analizador.ObtenerOpciones();
            gvRendimientos.DataBind();

            // Mostrar la mejor opción en el Label de recomendación
            OpcionInversion mejor = analizador.ObtenerMejorOpcion();

            lblRecomendacion.Text = "La mejor opción de inversión es: " + mejor.NombreBanco +
                ", de forma " + mejor.Modalidad.ToLower() +
                ", con un rendimiento de " + mejor.Rendimiento.ToString("C2", AR) + ".";
        }

    }
}