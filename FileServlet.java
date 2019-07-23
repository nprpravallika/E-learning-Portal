package onlineportal;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class FileServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String coursename=(String) session.getAttribute("cours");
		String pdfFileName="";
		if(coursename.equals("Ds")) {
			pdfFileName="/WEB-INF/knapsack_greedy.pdf";;
		}
		else if(coursename.equals("Dbms")) {
			pdfFileName="/WEB-INF/Wps.pdf";;
		}
		else if(coursename.equals("Daa")) {
			pdfFileName="/WEB-INF/knapsack_greedy.pdf";;
		}
		else if(coursename.equals("Se")) {
			pdfFileName="/WEB-INF/Se.pdf";;
		}
		else if(coursename.equals("Eh")) {
			pdfFileName="/WEB-INF/Se.pdf";;
		}
		else if(coursename.equals("Ai")) {
			pdfFileName="/WEB-INF/wps2.pdf";;
		}
		String contextPath = getServletContext().getRealPath(File.separator);
		File pdfFile = new File(contextPath + pdfFileName);
       
		response.setContentType("application/pdf");
		response.addHeader("Content-Disposition", "attachment; filename=" + pdfFileName);
		response.setContentLength((int) pdfFile.length());

		FileInputStream fileInputStream = new FileInputStream(pdfFile);
		OutputStream responseOutputStream = response.getOutputStream();
		int bytes;
		while ((bytes = fileInputStream.read()) != -1) {
			responseOutputStream.write(bytes);
		}

	}

}
