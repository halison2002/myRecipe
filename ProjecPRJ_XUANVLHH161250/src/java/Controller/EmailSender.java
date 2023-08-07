/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.util.Properties;
import jakarta.mail.*;
import jakarta.mail.internet.*;
import jakarta.websocket.Session;
import java.net.Authenticator;
import java.net.PasswordAuthentication;

public class EmailSender {

    public static void sendOTPEmail(String toEmail, String otp) throws Exception {
        String fromEmail = "yourgmail@gmail.com";
        String password = "yourgmailpassword";
        
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");


        Authenticator auth = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        };
        
        Session session = Session.getInstance(props, auth);
        
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(fromEmail));
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
        message.setSubject("OTP Verification");
        message.setText("Your OTP code is: " + otp);
        
        Transport.send(message);
    }
}
