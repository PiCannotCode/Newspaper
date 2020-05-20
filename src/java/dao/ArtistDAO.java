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
import entity.Artist;

/**
 *
 * @author sonnt
 */
public class ArtistDAO extends DBContext {

    public ArrayList<Artist> getArtists() {
        ArrayList<Artist> artistList = new ArrayList<>();
        try {
            String sql = "SELECT * \n"
                    + "from Artist";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Artist a = new Artist();
                a.setId(rs.getInt("id"));
                a.setFullName(rs.getString("fullName"));
                a.setStageName(rs.getString("stageName"));
                a.setDate(rs.getString("DOB"));
                a.setIntroduce(rs.getString("introduce"));
                a.setActivity(rs.getString("activity"));
                a.setCatID(1);
                artistList.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArtistDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return artistList;
    }

    
    
    
}
