package cuong.servlet.user;

import cuong.dao.UserDAO;
import cuong.database.DBConnection;
import cuong.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/userLogin")
public class UserLoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();

        UserDAO userDAO = new UserDAO(DBConnection.getConnection());
        User user = userDAO.loginUser(email, password);

        /*Nếu đăng nhập thành công thì chuyển về trang chủ*/
        if (user != null) {
            session.setAttribute("userObj", user);
            resp.sendRedirect("index.jsp");
        } else {
            session.setAttribute("errorMsg", "Invalid email or password");
            resp.sendRedirect("user_login.jsp");
        }
    }
}
