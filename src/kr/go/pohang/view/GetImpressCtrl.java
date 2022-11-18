package kr.go.pohang.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.pohang.dto.ImpressDTO;
import kr.go.pohang.model.ImpressDAO;

@WebServlet("/GetImpressCtrl.do")
public class GetImpressCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("no"));
		
		ImpressDAO dao = new ImpressDAO();
		ImpressDTO dto = dao.getImpress(no);
		
		//dao로 부터 받은 데이터를 view에 디스패치함
		request.setAttribute("dto", dto);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/impress/impressDetail.jsp");
		view.forward(request, response);
	}
}