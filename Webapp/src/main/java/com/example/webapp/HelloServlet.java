package com.example.webapp;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    /*Khởi tạo servlet
    * Tạo ra 1 cặp đối tượng duy nhất là: Request và Response. Các request sau đó tới servlet, không cần phải tạo lại cặp Request và Response này nữa
    * Vì chúng chỉ cần tạo 1 lần đầu tiên duy nhất. Điểu này do Servlet conainer quản lý vòng đời của servlet
    * Vai trò của servlet container:
    * 1. LifeCycle Management: Quản lý vòng đời của servlet, khởi tạo, load class, call method, giải phóng tài nguyên
    * 2. JSP support: Quản lý jsp
    * 3. Communication support: Quản lý giao tiếp giữa serlet và webserver
    *  */

    // Init chỉ được gọi 1 lần trước khi servlet xử lý các request (trước khi service() được gọi
    public void init() {
        message = "Hello World!";
    }

    //Được gọi bởi khi client gửi request, có thể được gọi nhiều lần, để xử lý các request
    //service() dựa vào HTTP request để gọi các doXXX() tương ứng. Method này được xử lý trong từng luồng riêng biệt
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
    }

    //Được gọi bởi service tùy thuộc vào HTTP request
    // (method = POST)
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    //Được gọi bởi service
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }


    //Chỉ được gọi 1 lần bởi container
    public void destroy() {
    }

}