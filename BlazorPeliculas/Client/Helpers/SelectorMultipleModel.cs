namespace BlazorPeliculas.Client.Helpers
{
    public class SelectorMultipleModel
    {
        public SelectorMultipleModel(string llave, string valor)
        {
            Llave = llave;
            Valor = valor;
        }

        public string Llave { get; set; }   // Será la llave del elemento
        public string Valor { get; set; }   // Será lo que se le muestra al uusario
    }
}
