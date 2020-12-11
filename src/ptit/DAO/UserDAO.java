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

import ptit.model.User;

/**
 *
 * @author datnvt
 */
public class UserDAO extends DAO{
    public UserDAO() {
            super();
    }

    public boolean checkLogin(User user) {
        boolean result= false;
        try {
            this.client = new Socket(this.ip, this.port);
            out= new ObjectOutputStream(client.getOutputStream());
            in= new ObjectInputStream(client.getInputStream());
            String temp= "checkLogin";
            out.writeObject(temp);
            String check;
            check= (String) in.readObject();
            System.out.println(check);
            out.writeObject(user);
            User ruser = (User) in.readObject();
            user.setFullName(ruser.getFullName());
            user.setId(ruser.getId());
            user.setNumSolver(ruser.getNumSolver());
            if (user != null) {
                result = true;
            }
            this.client.close();
        } catch (IOException ex) {
//            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
              System.out.println("error io");
              ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
//            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("class not found");
                ex.printStackTrace();
        }
        return result;
    }   
    
    public ArrayList <User> getUserRanking() {
        ArrayList <User> userlist = new ArrayList<>();
        try {
            this.client = new Socket(this.ip, this.port);
            out= new ObjectOutputStream(client.getOutputStream());
            in= new ObjectInputStream(client.getInputStream());
            String temp= "getUserRanking";
            out.writeObject(temp);
            String check;
            check= (String) in.readObject();
            System.out.println(check);
//            out.writeObject(userlist);
            userlist = (ArrayList<User>) in.readObject();
        } catch (IOException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userlist;
    }
    
    public static void main(String[] args) {
        UserDAO o = new UserDAO();
        ArrayList <User> list= o.getUserRanking();
        for (User user : list) {
            System.out.println(user.getNumSolver());
        }
    }
}
