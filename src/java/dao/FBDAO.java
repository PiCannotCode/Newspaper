/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Account;
import entity.Article;
import entity.FB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jay
 */
public class FBDAO extends DBContext {

    public FB addFB(String name, String description) {

        try {
            String sql = "INSERT INTO Feedback VALUES (?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, description);

            FB f = new FB(name, description);
            ResultSet rs = st.executeQuery();
            return f;
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public ArrayList<FB> getAllFB() {
        ArrayList<FB> ars = new ArrayList<>();
        try {
            String sql = "select * from Feedback";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                FB f = new FB(rs.getString("name"), rs.getString("description"));
                ars.add(f);
            }

        } catch (SQLException ex) {
            Logger.getLogger(articleDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ars;
    }
}
