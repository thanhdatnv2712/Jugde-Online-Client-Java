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
public class ProblemSubmission implements Serializable{
    private int id;
    private int id_problem;
    private int id_submission;

    public ProblemSubmission() {
    }

    public ProblemSubmission(int id, int id_problem, int id_submission) {
        this.id = id;
        this.id_problem = id_problem;
        this.id_submission = id_submission;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_problem() {
        return id_problem;
    }

    public void setId_problem(int id_problem) {
        this.id_problem = id_problem;
    }

    public int getId_submission() {
        return id_submission;
    }

    public void setId_submission(int id_submission) {
        this.id_submission = id_submission;
    }
}
