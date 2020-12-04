/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package markingmachine.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static markingmachine.DAO.DAO.con;
import markingmachine.model.Problem;

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

        String sql = "SELECT * FROM problem";
        try {
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Problem prob = new Problem();
                    prob.setId(rs.getInt("id"));
                    prob.setName(rs.getString("name"));
                    prob.setStatement(rs.getString("statement"));
                    prob.setSolution(rs.getString("solution"));
                    prob.setNumSolved(rs.getInt("numSolved"));
                    prob.setTestPath(rs.getString("testPath"));
                    prob.setTimelimit(rs.getInt("timeLimit"));
                    prob.setMemlimit(rs.getInt("memLimit"));
                    Problemlist.add(prob);
                }
        }catch(Exception e) {
                e.printStackTrace();
        }
        return Problemlist;
    }
}
