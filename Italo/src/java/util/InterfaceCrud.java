/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public interface InterfaceCrud {

    public abstract boolean agregarRegistro();

    public abstract ArrayList consultaGeneral();

    public abstract boolean actualizarRegistro();

    public abstract boolean eliminarRegistro();

}
