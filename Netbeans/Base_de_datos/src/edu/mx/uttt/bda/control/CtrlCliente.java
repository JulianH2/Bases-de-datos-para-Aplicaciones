package edu.mx.uttt.bda.control;

import java.util.List;
import edu.mx.uttt.bda.entidad.cliente;
import edu.mx.uttt.bda.model.ModelCliente;


public class CtrlCliente implements IOperaciones {

    @Override
    public void agregar(Object obj) {
        cliente cli = (cliente) obj;
        ModelCliente.agregar(cli);
    }

    @Override
    public boolean actualizar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean editar(Object obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Object> consultar() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
