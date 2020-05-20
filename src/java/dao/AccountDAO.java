/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import entity.Account;
import java.sql.Statement;

/**
 *
 * @author sonnt
 */
public class AccountDAO extends DBContext {

    public ArrayList<Account> getAccounts() {
        ArrayList<Account> accs = new ArrayList<>();
        try {
            String sql = "SELECT * \n"
                    + "from Account";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(rs.getString("username"));
                a.setPassword(rs.getString("password"));
                a.setFullname(rs.getString("fullname"));
                a.setGender(Integer.parseInt(rs.getString("gender")));
                a.setRole(rs.getString("role"));
                accs.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return accs;
    }

    public Account checkAccount(String username, String password) {
        ArrayList<Account> accs = getAccounts();
        for (Account a : accs) {
            if (a.getUsername().equals(username) && a.getPassword().equals(password)) {
                return a;
            }
        }
        return null;
    }

    public Account addAccount(String username, String password, String fullname, int gender, String role) {
        
        if (checkAccount(username,password) == null) {
            try {
                String sql = "INSERT INTO Account(username,[password],fullname,gender,[role]) VALUES (?,?,?,?,?)";
                PreparedStatement st = connection.prepareStatement(sql);
                st.setString(1, username);
                st.setString(2, password);
                st.setString(3, fullname);
                st.setInt(4, gender);
                st.setString(5, role);
                Account a = new Account(username, password, fullname, gender, "user");
                ResultSet rs = st.executeQuery();
                return a;
            } catch (SQLException ex) {
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }
    
    public boolean updateAccount(String username, String password, String fullname, int gender){
        try {
            Statement stm = connection.createStatement();
            String update = "UPDATE Account SET password='"+password+"',fullname='"+fullname+"',gender='"+gender+"' WHERE username='"+username+"' ";
            stm.execute(update);
            return true;
        } catch (Exception e) {
            System.out.println("Update fail: "+e.getMessage());
            return false;
        }
    }
}
