/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ptit.view;

import ptit.DAO.UserDAO;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

import ptit.model.User;

/**
 *
 * @author datnvt
 */
public class LoginFrm extends JFrame implements ActionListener{

    /**
     * @param args the command line arguments
     */
    private JTextField txtUsername;
    private JPasswordField txtPassword;
    private JButton btnLogin;

    public LoginFrm() {
            super("Login");		
            txtUsername = new JTextField(32);
            txtPassword = new JPasswordField(32);
            txtPassword.setEchoChar('*');
            btnLogin = new JButton("Login");
            
//            this.setDefaultLookAndFeelDecorated(true);
            JPanel pnMain = new JPanel();
            BoxLayout boxlayout = new BoxLayout(pnMain, BoxLayout.Y_AXIS);
            pnMain.setLayout(boxlayout);
            pnMain.setBorder(new EmptyBorder(new Insets(400, 100, 400, 100)));

            JLabel lblHome = new JLabel("Login");	
            lblHome.setFont (lblHome.getFont ().deriveFont (20.0f));
            pnMain.add(lblHome);

            JPanel pnUsername = new JPanel();
            pnUsername.setLayout(new FlowLayout());
            pnUsername.add(new JLabel("Username:"));
            pnUsername.add(txtUsername);
            pnMain.add(pnUsername);

            JPanel pnPass = new JPanel();
            pnPass.setLayout(new FlowLayout());
            pnPass.add(new JLabel("Password:"));
            pnPass.add(txtPassword);
            pnMain.add(pnPass);;

            pnMain.add(btnLogin);	
            btnLogin.addActionListener(this);	
            pnMain.setAlignmentY(Component.CENTER_ALIGNMENT);
            this.getContentPane().add(pnMain);
            this.setSize(1024,960);				

            this.setLocationRelativeTo(null);
            this.setContentPane(pnMain);
            this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }

    public void actionPerformed(ActionEvent e) {
            if((e.getSource() instanceof JButton)&&(((JButton)e.getSource()).equals(btnLogin))) {
                    User user = new User();
                    user.setUsername(txtUsername.getText());
                    user.setPassword(txtPassword.getText());

                    UserDAO ud = new UserDAO();
                    if(ud.checkLogin(user)) {
                        System.out.println(user.toString());
                        try {
                            (new MainFrm(user)).setVisible(true);
                        } catch (IOException ex) {
                            Logger.getLogger(LoginFrm.class.getName()).log(Level.SEVERE, null, ex);
                        }
                        this.dispose();
                    }else {
                        JOptionPane.showMessageDialog(this, "Incorrect username and/or password!");
                    }
            }
    }
}
