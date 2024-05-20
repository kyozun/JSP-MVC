package cuong.servlet.admin;

import cuong.dao.DoctorDAO;
import cuong.database.DBConnection;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/deleteDoctor")
public class DeleteDoctorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        //get id(which is coming as string value) and convert into int
        int id = Integer.parseInt(req.getParameter("id"));

        DoctorDAO doctorDAO = new DoctorDAO(DBConnection.getConnection());
        HttpSession session = req.getSession();

        boolean isSuccess = doctorDAO.deleteDoctorById(id);

        if (isSuccess) {
            session.setAttribute("successMsg", "Doctor deleted successfully");
            resp.sendRedirect("admin/view_doctor.jsp");
        } else {
            session.setAttribute("errorMsg", "Something went wrong on server");
            resp.sendRedirect("admin/view_doctor.jsp");
        }
    }


}
