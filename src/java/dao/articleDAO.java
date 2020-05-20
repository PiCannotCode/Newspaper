/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Article;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import entity.Article;
import java.sql.Statement;

/**
 *
 * @author sonnt
 */
public class articleDAO extends DBContext {

    public ArrayList<Article> getAllArticle() {
        ArrayList<Article> ars = new ArrayList<>();
        try {
            String sql = "select * from Article";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Article a = new Article(rs.getInt("id"),
                        rs.getString("tittle"),
                        rs.getString("detail"),
                        rs.getString("img"),
                        rs.getInt("catID"));
                ars.add(a);
            }

        } catch (SQLException ex) {
            Logger.getLogger(articleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ars;
    }

    public ArrayList<Article> getArticleList(int cID) {
        ArrayList<Article> ars = new ArrayList<>();
        try {
            String sql = "select * from Article ORDER BY id DESC";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Article a = new Article(rs.getInt("id"),
                        rs.getString("tittle"),
                        rs.getString("detail"),
                        rs.getString("img"),
                        rs.getInt("catID"));
                if (rs.getInt("catID") == cID) {
                    ars.add(a);
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(articleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ars;
    }

    public ArrayList<Article> getArticleListByTitle(String value) {
        ArrayList<Article> ars = new ArrayList<>();
        try {
            String sql = "select * from Article";
            if (!value.trim().isEmpty()) {
                sql += " where tittle like '%" + value + "%'";
            }
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Article a = new Article(rs.getInt("id"),
                        rs.getString("tittle"),
                        rs.getString("detail"),
                        rs.getString("img"),
                        rs.getInt("catID"));
                ars.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(articleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ars;
    }

    public ArrayList<Article> getArticleDetail(int id) {
        ArrayList<Article> ars = new ArrayList<>();
        try {
            String sql = "select * from Article";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Article a = new Article(rs.getInt("id"),
                        rs.getString("tittle"),
                        rs.getString("detail"),
                        rs.getString("img"),
                        rs.getInt("catID"));
                if (rs.getInt("id") == id) {
                    ars.add(a);
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(articleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ars;
    }

    public Article getArticlebyid(int id) {

        try {
            String sql = "select * from Article";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Article a = new Article(rs.getInt("id"),
                        rs.getString("tittle"),
                        rs.getString("detail"),
                        rs.getString("img"),
                        rs.getInt("catID"));
                if (rs.getInt("id") == id) {
                    return a;
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(articleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean addArticle(int id, String tittle, String detail, String img, int catID) {
        try {
            Statement stm = connection.createStatement();
            String strInsert = "insert into Article values('" + id + "','" + tittle + "','" + detail + "','" + img + "','" + catID + "')";
            stm.execute(strInsert);
            return true;
        } catch (Exception e) {
            System.out.println("Insert fail: " + e.getMessage());
            return false;
        }
    }

    public boolean updateArticle(int id, String tittle, String detail, String img, int catID) {
        try {
            String sql = "UPDATE Article SET tittle= ? ,detail= ? ,img= ? ,catID= ? WHERE id=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, tittle);
            st.setString(2, detail);
            st.setString(3, img);
            st.setInt(4, catID);
            st.setInt(5, id);
            int flag = st.executeUpdate();
            if (flag>=1) return true;
            else return false;
        } catch (Exception e) {
            System.out.println("Update fail: " + e.getMessage());
            return false;
        }
    }

    public boolean deleteArticle(int id) {
        try {
            Statement stm = connection.createStatement();
            String del = "DELETE FROM Article WHERE id='" + id + "' ";
            stm.execute(del);
            return true;
        } catch (Exception e) {
            System.out.println("Delete fail: " + e.getMessage());
            return false;
        }
    }

}
