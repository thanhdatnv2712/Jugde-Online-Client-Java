/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ptit.model;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author datnvt
 */
public class Submission implements Serializable{
    private static final long serialVersionUID = 1L;
    private int id;
    private int languageid;
    private int problemid;
    private String submisstionCode;
    private String codePath;
    private String judgeStatus;
    private String jugdeReport;
    private int userid;
    private String judge_core_errors;
    private String verdict;
    private String submitTime;

    public Submission() {
        this.languageid = 1;
    }

    public Submission(int id, int languageid, int problemid, String submisstionCode, String codePath, String judgeStatus, String jugdeReport, int userid, String judge_core_errors, String verdict, String submitTime) {
        this.id = id;
        this.languageid = languageid;
        this.problemid = problemid;
        this.submisstionCode = submisstionCode;
        this.codePath = codePath;
        this.judgeStatus = judgeStatus;
        this.jugdeReport = jugdeReport;
        this.userid = userid;
        this.judge_core_errors = judge_core_errors;
        this.verdict = verdict;
        this.submitTime = submitTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLanguageid() {
        return languageid;
    }

    public void setLanguageid(int languageid) {
        this.languageid = languageid;
    }

    public int getProblemid() {
        return problemid;
    }

    public void setProblemid(int problemid) {
        this.problemid = problemid;
    }

    public String getSubmisstionCode() {
        return submisstionCode;
    }

    public void setSubmisstionCode(String submisstionCode) {
        this.submisstionCode = submisstionCode;
    }

    public String getCodePath() {
        return codePath;
    }

    public void setCodePath(String codePath) {
        this.codePath = codePath;
    }

    public String getJudgeStatus() {
        return judgeStatus;
    }

    public void setJudgeStatus(String judgeStatus) {
        this.judgeStatus = judgeStatus;
    }

    public String getJugdeReport() {
        return jugdeReport;
    }

    public void setJugdeReport(String jugdeReport) {
        this.jugdeReport = jugdeReport;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getJudge_core_errors() {
        return judge_core_errors;
    }

    public void setJudge_core_errors(String judge_core_errors) {
        this.judge_core_errors = judge_core_errors;
    }

    public String getVerdict() {
        return verdict;
    }

    public void setVerdict(String verdict) {
        this.verdict = verdict;
    }

    public String getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(String submitTime) {
        this.submitTime = submitTime;
    }

    @Override
    public String toString() {
        return "Submission{" + "id=" + id + ", languageid=" + languageid + ", problemid=" + problemid + ", submisstionCode=" + submisstionCode + ", codePath=" + codePath + ", judgeStatus=" + judgeStatus + ", jugdeReport=" + jugdeReport + ", userid=" + userid + ", judge_core_errors=" + judge_core_errors + ", verdict=" + verdict + ", submitTime=" + submitTime + '}';
    }
    
}
