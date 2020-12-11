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
import ptit.model.Submission;
import ptit.model.User;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author datnvt
 */
public class SubmissionDAO extends DAO{
    public SubmissionDAO() {
        super();
    }
    
    public ArrayList <Submission> getAllSubmission() {
        ArrayList <Submission> Submisstionlist = new ArrayList<>();
        try {
            this.client = new Socket(this.ip, this.port);
            out= new ObjectOutputStream(client.getOutputStream());
            in= new ObjectInputStream(client.getInputStream());
            String temp= "getAllSubmission";
            out.writeObject(temp);
            String check;
            check= (String) in.readObject();
            System.out.println(check);
            Submisstionlist = (ArrayList<Submission>) in.readObject();
            this.client.close();
        } catch (IOException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Submisstionlist;
    }
//    
    public ArrayList <Submission> getUserSubmission(User user) {
        ArrayList <Submission> Submisstionlist = new ArrayList<>();
        try {
            this.client = new Socket(this.ip, this.port);
            out= new ObjectOutputStream(client.getOutputStream());
            in= new ObjectInputStream(client.getInputStream());
            String temp= "getUserSubmission";
            out.writeObject(temp);
            String check;
            check= (String) in.readObject();
            System.out.println(check);
            out.writeObject(user);
            Submisstionlist = (ArrayList<Submission>) in.readObject();
            this.client.close();
        } catch (IOException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Submisstionlist;
    }
    
    public static void main(String[] args) {
        SubmissionDAO o = new SubmissionDAO();
        User u = new User();
        u.setId(1);
        ArrayList<Submission> list= o.getUserSubmission(u);
//        System.out.println(list.get(0).getVerdict());
        for (Submission submission : list) {
            System.out.println(submission.getLanguageid());
        }
        
    }
}
