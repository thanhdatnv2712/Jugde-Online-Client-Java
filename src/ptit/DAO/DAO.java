/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ptit.DAO;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author datnvt
 */
public class DAO {
//    public static Connection con;
    protected String ip;
    protected int port;
    protected Socket client;
    protected ObjectOutputStream out;
    protected ObjectInputStream in;
    protected static java.sql.Timestamp convertDate2SqlDatetime(java.util.Date uDate) {
        java.sql.Timestamp sDate = new java.sql.Timestamp(uDate.getTime());
        return sDate;
    }
    public DAO(){
        ip= "192.168.43.192";
//        ip= "172.17.0.1";
        port= 8001;
    }
}
