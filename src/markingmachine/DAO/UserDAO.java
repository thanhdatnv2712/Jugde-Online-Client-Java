/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package markingmachine.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import markingmachine.model.User;

/**
 *
 * @author datnvt
 */
public class UserDAO extends DAO{
    public UserDAO() {
            super();
    }

    public boolean checkLogin(User user) {
            boolean result = false;
            String sql = "SELECT id, fullname FROM user WHERE username = ? AND password = ?";
            try {
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1, user.getUsername());
                    ps.setString(2, user.getPassword());
                    ResultSet rs = ps.executeQuery();
                    if(rs.next()) {
                        user.setId(rs.getInt("id"));
                        user.setFullName(rs.getString("fullname"));
                        result = true;
                    }
            }catch(Exception e) {
                    e.printStackTrace();
            }
            return result;
    }   
    
    public ArrayList <User> getUserRanking() {
        ArrayList <User> userlist = new ArrayList<>();
        String sql = "SELECT * FROM user";
        try {
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while(rs.next()) {
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setFullName(rs.getString("fullname"));
                    user.setPassword(rs.getString("username"));
                    user.setUsername(rs.getString("password"));
                    userlist.add(user);
                }
        }catch(Exception e) {
                e.printStackTrace();
        }
        return userlist;
    }
}
