package org.o7planning.tutorial.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
    name = "MyExampleServlet",
    displayName = "Example Servlet",
    description = "This is an example servlet",
    urlPatterns = {"/example", "/test"},
    asyncSupported = true,
    loadOnStartup = 1,
    initParams = {
        @WebInitParam(name = "param1", value = "value1"),
        @WebInitParam(name = "param2", value = "value2")
    }
)

public class AnnotationExampleServlet2 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        ServletOutputStream out = response.getOutputStream();
        out.println("Example Servlet is working!");
    }
}
