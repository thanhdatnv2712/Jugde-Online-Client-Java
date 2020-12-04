/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package markingmachine.model;

import java.io.Serializable;

/**
 *
 * @author datnvt
 */
public class User implements Serializable{
    private int id;
    private String username;
    private String password;
    private String fullName;
    private int numSolver;

    public User() {
        super();
    }

    public User(int id, String username, String password, String fullName, int num) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.numSolver = num;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getNumSolver() {
        return numSolver;
    }

    public void setNumSolver(int numSolver) {
        this.numSolver = numSolver;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", username=" + username + ", password=" + password + ", fullName=" + fullName + ", numSolver=" + numSolver + '}';
    }
    
    public int compareTo(User user) {
        return (this.getNumSolver() > user.getNumSolver() ? 0 : -1);
    }
}
