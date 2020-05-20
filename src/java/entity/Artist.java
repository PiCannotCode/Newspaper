/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Jay
 */
public class Artist {
    private int id;
    private String fullName;
    private String stageName;
    private String date;
    private String introduce;
    private String activity;
    private int catID;

    public Artist() {
    }

    public Artist(int id, String fullName, String stageName, String date, String introduce, String activity, int catID) {
        this.id = id;
        this.fullName = fullName;
        this.stageName = stageName;
        this.date = date;
        this.introduce = introduce;
        this.activity = activity;
        this.catID = catID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getStageName() {
        return stageName;
    }

    public void setStageName(String stageName) {
        this.stageName = stageName;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public int getCatID() {
        return catID;
    }

    public void setCatID(int catID) {
        this.catID = catID;
    }
    
}
