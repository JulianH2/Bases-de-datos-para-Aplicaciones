package edu.mx.uttt.bda.vista;

//import edu.mx.uttt.bda.conexion.Conexion;}
import edu.mx.uttt.bda.entidad.cliente;
import edu.mx.uttt.bda.control.CtrlCliente;

public class VistaCliente {

    public static void main(String[] args) {
//     Conexion.conectar();
        cliente cl = new cliente();
        cl.setCustomerId("DSMG3");
        cl.setCompanyName("Gallina de Hule");
        cl.setContacto("Lizetg Kasumi pando");
        cl.setContacTitulo("Gerente de ASI");
        cl.setAddress("Av. Libre");
        cl.setCity("Salte si puedes");
        cl.setRegion("Este");
        cl.setPostalCode("42800");
        cl.setCountry("Irlandia");
        cl.setPhone("1234-456789");
        cl.setFax("546789IHH");
        // Enviar
        CtrlCliente ctrlCli = new CtrlCliente();
        ctrlCli.agregar(cl);
    }
}
