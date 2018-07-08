/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import model.User;

/**
 *
 * @author ADMIN
 */
public class UserDAO {
    public static  Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName(DBConfig.driver);
            conn = DriverManager.getConnection(DBConfig.url,DBConfig.user,DBConfig.password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
     public static boolean addUser(User user){
         try (Connection con = getConnection()){
             String insert = "insert into nhanvien values(?,?)";
             PreparedStatement ps = con.prepareStatement(insert);
             ps.setString(1,user.getUserName());
             ps.setString(2, user.getPassWord());
             ps.executeUpdate();
             ps.close();
             return true;
         } catch (Exception e) {
             e.printStackTrace();
         }
         return false;
     }
}
