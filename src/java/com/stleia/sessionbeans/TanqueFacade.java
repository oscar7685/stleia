/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.sessionbeans;

import com.stleia.beans.Tanque;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Oscar
 */
@Stateless
public class TanqueFacade extends AbstractFacade<Tanque> {
    @PersistenceContext(unitName = "stleiaPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public TanqueFacade() {
        super(Tanque.class);
    }
    
}
