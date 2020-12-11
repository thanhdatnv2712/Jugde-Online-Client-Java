/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ptit.model;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author datnvt
 */
public class Client {
    private Socket client;
    private String ip;
    private int port;
    private BufferedOutputStream bos;
    private BufferedInputStream bis;

    public Client(Socket client, String ip, int port, BufferedOutputStream bos, BufferedInputStream bis) {
        this.client = client;
        this.ip = ip;
        this.port = port;
        this.bos = bos;
        this.bis = bis;
    }

    public Client() {
    }
    
    
    public Client(String ip, int port) throws IOException {
        this.ip = ip;
        this.port = port;
    }

    public Socket getClient() {
        return client;
    }

    public void setClient(Socket client) {
        this.client = client;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public BufferedOutputStream getBos() {
        return bos;
    }

    public void setBos(BufferedOutputStream bos) {
        this.bos = bos;
    }

    public BufferedInputStream getBis() {
        return bis;
    }

    public void setBis(BufferedInputStream bis) {
        this.bis = bis;
    }
    
    public boolean send(Submission sub) {
        try {
            this.client = new Socket(this.ip, this.port);
            bos = new BufferedOutputStream(client.getOutputStream());
            bis = new BufferedInputStream(client.getInputStream());
            System.out.println(sub.getLanguageid());
            bos.write(sub.getLanguageid());
            bos.flush();
            System.out.println("bis read");
            bis.read();
            System.out.println(sub.getProblemid());
            bos.write(sub.getProblemid());
            bos.flush();
            System.out.println("bis read 2");
            bis.read();
            File file = new File(sub.getCodePath());
            FileInputStream fis = new FileInputStream(file);
            byte[] data = new byte[(int) file.length()];
            fis.read(data);
            fis.close();
            bos.write(data);
            bos.flush();
            bis.close();
            bos.close();
            return true;
        } catch (IOException ex) {
            Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
