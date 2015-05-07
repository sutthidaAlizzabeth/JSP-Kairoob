/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alizzabeth
 */
public class CheckLogin implements Filter {
    FilterConfig config ;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config =filterConfig ;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession s = ((HttpServletRequest) request).getSession(false);
        if (s != null && s.getAttribute("user") != null) {
            chain.doFilter(request, response);
        } else {
            config.getServletContext().getRequestDispatcher("/Login?target="+ 
                    ((HttpServletRequest) request).getRequestURI()).forward(request, response);
        }
        
    }

    @Override
    public void destroy() {
    }
}
