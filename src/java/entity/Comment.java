/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Pi Pi
 */
public class Comment {
    private int Article_ID;
    private String account_username;
    private String cmt;

    public Comment() {
    }

    public Comment(int Article_ID, String account_username, String cmt) {
        this.Article_ID = Article_ID;
        this.account_username = account_username;
        this.cmt = cmt;
    }

    public int getArticle_ID() {
        return Article_ID;
    }

    public void setArticle_ID(int Article_ID) {
        this.Article_ID = Article_ID;
    }

    public String getAccount_username() {
        return account_username;
    }

    public void setAccount_username(String account_username) {
        this.account_username = account_username;
    }

    public String getCmt() {
        return cmt;
    }

    public void setCmt(String cmt) {
        this.cmt = cmt;
    }
    
}
