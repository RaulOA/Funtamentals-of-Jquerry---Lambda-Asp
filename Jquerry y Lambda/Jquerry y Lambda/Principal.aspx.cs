using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Func<int, int> es un delegado de C#
// Toma un argumento de tipo int y devuelve un resultado de tipo int
// => es el operador lambda.
// n + 10 es la expresión que se evalúa para devolver el resultado de la función.

namespace Jquerry_y_Lambda.Jquerry
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sumar_ServerClick(object sender, EventArgs e)
        {
            Func<int, int> sumar10 = n => n + 10;

            int numero = int.Parse(txtnumero.Value);

            int result = sumar10(numero);

            resultado.InnerText = result.ToString();
            txtnumero.Value = result.ToString();

        }
    }
}