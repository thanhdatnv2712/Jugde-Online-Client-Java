/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ptit.model;

import java.io.Serializable;

/**
 *
 * @author datnvt
 */
public class Problem implements Serializable{
    private static final long serialVersionUID = 1L;
    private int id;
    private String name;
    private String title;
    private String statement;
    private String sampleTest;
    private String solution;
    private int numSolved;
    private String testPath;
    private long timelimit;
    private long memlimit;

    public Problem() {
        super();
    }

    public Problem(int id, String name, String title, String statement, String sampleTest, String solution, int numSolved, String testPath, long timelimit, long memlimit) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.statement = statement;
        this.sampleTest = sampleTest;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStatement() {
        return statement;
    }

    public void setStatement(String statement) {
        this.statement = statement;
    }

    public String getSampleTest() {
        return sampleTest;
    }

    public void setSampleTest(String sampleTest) {
        this.sampleTest = sampleTest;
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

    @Override
    public String toString() {
        return "Problem{" + "id=" + id + ", name=" + name + ", title=" + title + ", statement=" + statement + ", sampleTest=" + sampleTest + ", solution=" + solution + ", numSolved=" + numSolved + ", testPath=" + testPath + ", timelimit=" + timelimit + ", memlimit=" + memlimit + '}';
    }
}
