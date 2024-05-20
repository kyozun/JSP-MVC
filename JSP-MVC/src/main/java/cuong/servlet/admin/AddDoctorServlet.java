package cuong.servlet.admin;


import cuong.dao.DoctorDAO;
import cuong.database.DBConnection;
import cuong.entity.Doctor;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addDoctor")
public class AddDoctorServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            //Lấy dữ liệu từ file doctor.jsp
            String fullName = req.getParameter("fullName");
            String dateOfBirth = req.getParameter("dateOfBirth");
            String qualification = req.getParameter("qualification");
            String specialist = req.getParameter("specialist");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String password = req.getParameter("password");


            Doctor doctor = new Doctor(fullName, dateOfBirth, qualification, specialist, email, phone, password);
            DoctorDAO docDAO = new DoctorDAO(DBConnection.getConnection());
            boolean isSuccess = docDAO.registerDoctor(doctor);
            HttpSession session = req.getSession();

            if (isSuccess) {
                session.setAttribute("successMsg", "Doctor added successfully");
                resp.sendRedirect("admin/add_doctor.jsp");
            } else {
                session.setAttribute("errorMsg", "Something went wrong on server");
                resp.sendRedirect("admin/add_doctor.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

