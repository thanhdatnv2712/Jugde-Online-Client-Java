/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ptit.DAO;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import ptit.model.Problem;
import ptit.model.User;

/**
 *
 * @author datnvt
 */
public class ProblemDAO extends DAO {

    public ProblemDAO() {
        super();
    }
    
    public ArrayList <Problem> getAllProblem() {
        ArrayList <Problem> Problemlist = new ArrayList<>();
        try {
            this.client = new Socket(this.ip, this.port);
            out= new ObjectOutputStream(client.getOutputStream());
            in= new ObjectInputStream(client.getInputStream());
            String temp= "getAllProblem";
            out.writeObject(temp);
            String check;
            check= (String) in.readObject();
            System.out.println(check);
            Problemlist = (ArrayList<Problem>) in.readObject();
            this.client.close();
        } catch (IOException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Problemlist;
    }
}
