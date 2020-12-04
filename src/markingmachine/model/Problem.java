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
public class Problem implements Serializable{
    private int id;
    private String name;
    private String statement;
    private String solution;
    private int numSolved;
    private String testPath;
    private long timelimit;
    private long memlimit;

    public Problem() {
        super();
    }

    public Problem(int id, String name, String statement, String solution, int numSolved, String testPath, long timelimit, long memlimit) {
        this.id = id;
        this.name = name;
        this.statement = statement;
        this.solution = solution;
        this.numSolved = numSolved;
        this.testPath = testPath;
        this.timelimit = timelimit;
        this.memlimit = memlimit;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatement() {
        return statement;
    }

    public void setStatement(String statement) {
        this.statement = statement;
    }

    public String getSolution() {
        return solution;
    }

    public void setSolution(String solution) {
        this.solution = solution;
    }

    public int getNumSolved() {
        return numSolved;
    }

    public void setNumSolved(int numSolved) {
        this.numSolved = numSolved;
    }

    public String getTestPath() {
        return testPath;
    }

    public void setTestPath(String testPath) {
        this.testPath = testPath;
    }

    public long getTimelimit() {
        return timelimit;
    }

    public void setTimelimit(long timelimit) {
        this.timelimit = timelimit;
    }

    public long getMemlimit() {
        return memlimit;
    }

    public void setMemlimit(long memlimit) {
        this.memlimit = memlimit;
    }
}
