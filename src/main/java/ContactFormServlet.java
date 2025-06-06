import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.Properties;

import jakarta.mail.*;
import jakarta.mail.internet.*;

@WebServlet("/contact")
public class ContactFormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Set recipient email here - where you want to receive contact form messages
    private static final String TO_EMAIL = "drmukesh496@gmail.com"; 

    // Your Gmail credentials (App Password, no spaces)
    private static final String FROM_EMAIL = "drmukesh496@gmail.com";
    private static final String APP_PASSWORD = "vtddpjziicratgps";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");  // Trust Gmail SMTP

        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(FROM_EMAIL, APP_PASSWORD);
            }
        });

        try {
            Message msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(FROM_EMAIL));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(TO_EMAIL));
            msg.setSubject("New Contact Form Submission from " + name);
            msg.setText(
                "Name: " + name + "\n" +
                "Email: " + email + "\n" +
                "Message:\n" + message
            );

            Transport.send(msg);
            response.sendRedirect("index.jsp?success=true");

        } catch (MessagingException e) {
            e.printStackTrace();

            // Optional: pass error message to show on JSP
            request.getSession().setAttribute("mailError", e.getMessage());
            response.sendRedirect("contactus.jsp?error=true");
        }
    }
}
