/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.sessionbeans;

import com.stleia.beans.Freidora;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Oscar
 */
@Stateless
public class FreidoraFacade extends AbstractFacade<Freidora> {
    @PersistenceContext(unitName = "stleiaPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FreidoraFacade() {
        super(Freidora.class);
    }
    
}
