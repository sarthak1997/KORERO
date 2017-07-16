/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author rohan
 */
public class AnswerModel {
    private int qid,upvotes,reportAbuseCount;
    private String text="",ansDate,uid,uname,answer="";

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
   

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public int getUpvotes() {
        return upvotes;
    }

    public void setUpvotes(int upvotes) {
        this.upvotes = upvotes;
    }

    public int getReportAbuseCount() {
        return reportAbuseCount;
    }

    public void setReportAbuseCount(int reportAbuseCount) {
        this.reportAbuseCount = reportAbuseCount;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getAnsDate() {
        return ansDate;
    }

    public void setAnsDate(String ansDate) {
        this.ansDate = ansDate;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

   
    
 
}
