package markingmachine.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static markingmachine.DAO.DAO.con;
import markingmachine.model.Problem;
import markingmachine.model.Submisstion;
import markingmachine.model.User;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author datnvt
 */
public class SubmisstionDAO extends DAO{
    public SubmisstionDAO() {
        super();
    }
    
    public ArrayList <Submisstion> getAllSubmisstion() {
        ArrayList <Submisstion> Submisstionlist = new ArrayList<>();

        String sql = "SELECT * FROM submission";
        try {
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Submisstion sub = new Submisstion();
                    sub.setId(rs.getInt("id"));
                    sub.setSubmisstionCode(rs.getString("submissionCode"));
                    sub.setJudgeStatus(rs.getString("judgeStatus"));
                    sub.setJugdeReport(rs.getString("jugdeReport"));
                    sub.setUserid(rs.getInt("user_id"));
                    sub.setJudge_core_errors(rs.getString("judge_core_errors"));
                    Submisstionlist.add(sub);
                }
        }catch(Exception e) {
                e.printStackTrace();
        }
        return Submisstionlist;
    }
    
    public ArrayList <Submisstion> getUserSubmission(User user) {
        ArrayList <Submisstion> Submisstionlist = new ArrayList<>();

        String sql = "SELECT submission.id, submission.submissionCode, submission.judgeStatus, submission.judgeReport, submission.user_id, submission.judge_core_errors, problem_submission.id_problem FROM submission INNER JOIN problem_submission ON submission.id = problem_submission.id_submission WHERE user_id = ?";
        try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, user.getId());
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Submisstion sub = new Submisstion();
                    sub.setId(rs.getInt("submission.id"));
                    sub.setSubmisstionCode(rs.getString("submission.submissionCode"));
                    sub.setJudgeStatus(rs.getString("submission.judgeStatus"));
                    sub.setJugdeReport(rs.getString("submission.judgeReport"));
                    sub.setUserid(rs.getInt("submission.user_id"));
                    sub.setJudge_core_errors(rs.getString("submission.judge_core_errors"));
                    sub.setProblemid(rs.getInt("problem_submission.id_problem"));
                    Submisstionlist.add(sub);
                }
        }catch(Exception e) {
                e.printStackTrace();
        }
        return Submisstionlist;
    }
    
//    public static void main(String[] args) {
//        SubmisstionDAO t = new SubmisstionDAO();
//        ArrayList <Submisstion> Submisstionlist = t.getUserSubmission(new User(1, "admin", "admin", "cv", 1));
//        for (Submisstion submisstion : Submisstionlist) {
//            System.out.println(submisstion.getJudgeStatus());
//            System.out.println(submisstion.getUserid());
//            System.out.println(submisstion.getProblemid());
//        }
//    }
}
